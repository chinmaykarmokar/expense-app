import "package:flutter/material.dart";

class DatePickerWidget extends StatelessWidget {
  final Function textWidget;
  final DateTime? selectedDate;
  final Future<void> Function(BuildContext) selectDate;
  final Function formButtonWidget;

  const DatePickerWidget({
    required this.textWidget,
    required this.selectedDate,
    required this.selectDate,
    required this.formButtonWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    List months = <String>["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        formButtonWidget(
          onPressedFunction: () => selectDate(context),
          childWidget: textWidget(
              text: "Select a date",
            textColor: 0xFFFFFFFF
          ),
          padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0)
        ),
        selectedDate != null ? textWidget(
          text: "${selectedDate?.day} ${months[selectedDate!.month - 1]} ${selectedDate?.year}",
        ) : Container()
      ],
    );
  }
}