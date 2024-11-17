import "package:flutter/material.dart";

class DatePickerWidget extends StatefulWidget {
  final Function textWidget;
  final Function formButtonWidget;

  const DatePickerWidget({
    required this.textWidget,
    required this.formButtonWidget,
    super.key
  });

  @override
  DatePickerWidgetState createState() => DatePickerWidgetState();
}

class DatePickerWidgetState extends State<DatePickerWidget> {
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

  List months = <String>["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.formButtonWidget(
          onPressedFunction: (){
            selectDate(context);
          },
          childWidget: widget.textWidget(
              text: "Select a date",
            textColor: 0xFFFFFFFF
          ),
          padding: EdgeInsets.fromLTRB(30.0, 15.0, 30.0, 15.0)
        ),
        selectedDate != null ? widget.textWidget(
          text: "${months[selectedDate!.month - 1]} ${selectedDate!.day} ${selectedDate!.year}",
        ) : Container()
      ],
    );
  }
}