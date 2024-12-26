import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

// Import Bloc and event
import "package:chinmay_expenses_app/features/updates/presentation/bloc/update_expenses/update_expenses_bloc.dart";
import "package:chinmay_expenses_app/features/updates/presentation/bloc/update_expenses/update_expenses_event.dart";

// Import utils
import "package:chinmay_expenses_app/common/utils/yyyy_mm_dd_date_formatter.dart";

class UpdateExpensesUi extends StatelessWidget {
  final String? date;
  final String? type;
  final double? price;
  final Function textWidget;
  final Function sizedBoxWidget;
  final Function formInputWidget;
  final Function formButtonWidget;

  const UpdateExpensesUi({
    required this.date,
    required this.type,
    required this.price,
    required this.textWidget,
    required this.sizedBoxWidget,
    required this.formInputWidget,
    required this.formButtonWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    TextEditingController expenseTypeController = TextEditingController(text: type);
    TextEditingController priceController = TextEditingController(text: price.toString());

    return Container(
      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          sizedBoxWidget(
            height: MediaQuery.of(context).size.height * 0.03,
          ),
          formInputWidget(
              controller: expenseTypeController,
              keyboardType: TextInputType.text,
              letterSpacing: 1.0,
              fontSize: 14.0,
              maxInputLength: 15,
              regexp: r'[a-zA-Z\s]',
              childWidget: textWidget(
                  text: "Update expense category"
              )
          ),
          sizedBoxWidget(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          formInputWidget(
              controller: priceController,
              keyboardType: TextInputType.number,
              letterSpacing: 1.0,
              fontSize: 14.0,
              maxInputLength: 7,
              regexp: r'[0-9.]',
              childWidget: textWidget(
                  text: "Update price"
              )
          ),
          sizedBoxWidget(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          formButtonWidget(
              onPressedFunction: (){
                BlocProvider.of<UpdateExpensesBloc>(context).add(UpdateExpense(
                    date: yyyyMmDdDateFormatter(date),
                    type: expenseTypeController.text,
                    price: double.tryParse(priceController.text)
                ));
              },
              childWidget: textWidget(
                text: "Update Expense",
                textColor: 0xFFFFFFFF,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
              backgroundColor: 0xFF000000,
              borderWidth: 2.0,
              buttonRadius: 10.0,
              padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
          )
        ],
      ),
    );
  }
}