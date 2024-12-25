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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            formButtonWidget(
                onPressedFunction: () => selectDate(context),
                childWidget: textWidget(
                  text: "Select a date",
                  textColor: 0xFFFFFFFF,
                  fontWeight: FontWeight.w600
                ),
                buttonRadius: 10.0,
                padding: EdgeInsets.fromLTRB(30.0, 12.0, 30.0, 12.0)
            ),
            selectedDate != null ? textWidget(
              text: "${selectedDate?.day} ${months[selectedDate!.month - 1]} ${selectedDate?.year}",
              fontSize: 18.0,
              fontWeight: FontWeight.w500
            ) : Container()
          ],
        )
      ],
    );
  }
}