import "package:flutter/material.dart";

class EntryScreen extends StatefulWidget {
  final Function appBarWidget;
  final Function textWidget;
  final Function formInputWidget;
  final Function formButtonWidget;
  final Function datePickerWidget;

  const EntryScreen({
    required this.appBarWidget,
    required this.textWidget,
    required this.formInputWidget,
    required this.formButtonWidget,
    required this.datePickerWidget,
    super.key
  });

  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  TextEditingController expenseTypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.appBarWidget(
        titleWidget: widget.textWidget(
          text: "Add expenses"
        )
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            widget.textWidget(
              text: "Expense date",
              fontSize: 20.0
            ),
            widget.datePickerWidget(),
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
              controller: expenseTypeController,
              keyboardType: TextInputType.number,
              letterSpacing: 1.0,
              fontSize: 14.0,
              maxInputLength: 7,
              regexp: r'[a-zA-Z\s]',
              childWidget: widget.textWidget(
                text: "Add expense amount"
              )
            ),
            widget.formButtonWidget(
                onPressedFunction: (){
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
      )
    );
  }
}