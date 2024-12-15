import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

// Import BLoC and event
import "package:chinmay_expenses_app/features/entry/presentation/bloc/entry_bloc.dart";
import "package:chinmay_expenses_app/features/entry/presentation/bloc/entry_event.dart";

class EntryUI extends StatefulWidget {
  final Function textWidget;
  final Function datePickerWidget;
  final Function formInputWidget;
  final Function formButtonWidget;

  const EntryUI({
    required this.textWidget,
    required this.datePickerWidget,
    required this.formInputWidget,
    required this.formButtonWidget,
    super.key
  });

  @override
  State<EntryUI> createState() => EntryUIState();
}

class EntryUIState extends State<EntryUI> {
  DateTime? selectedDate;

  Future<void> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(), // Default date
      firstDate: DateTime(2000), // Earliest date
      lastDate: DateTime(2101), // Latest date
    );
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController expenseTypeController = TextEditingController();
    TextEditingController expenseAmountController = TextEditingController();

    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          widget.textWidget(
            text: "Expense date",
            fontSize: 20.0
          ),
          widget.datePickerWidget(
            selectedDate: selectedDate,
            selectDate: selectDate
          ),
          widget.formInputWidget(
            controller: expenseTypeController,
            keyboardType: TextInputType.text,
            letterSpacing: 1.0,
            fontSize: 14.0,
            maxInputLength: 15,
            regexp: r'[a-zA-Z\s]',
            childWidget: widget.textWidget(
              text: "Add expense category"
            )
          ),
          widget.formInputWidget(
            controller: expenseAmountController,
            keyboardType: TextInputType.number,
            letterSpacing: 1.0,
            fontSize: 14.0,
            maxInputLength: 7,
            regexp: r'[0-9]',
            childWidget: widget.textWidget(
              text: "Add expense amount"
            )
          ),
          widget.formButtonWidget(
            onPressedFunction: (){
              BlocProvider.of<AddExpensesBloc>(context).add(AddExpense(
                date: "${selectedDate?.year}-${selectedDate?.month}-${selectedDate?.day}",
                expenses: {
                  expenseTypeController.text: expenseAmountController.text
                }
              ));
            },
            childWidget: widget.textWidget(
              text: "+ Add Expense",
              textColor: 0xFF000000
            ),
            backgroundColor: 0xFFFFFFFF,
            borderWidth: 2.0,
            padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
          )
        ],
      )
    );
  }
}