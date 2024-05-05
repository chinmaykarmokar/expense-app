import 'package:flutter/material.dart';

class NewExpenseForm extends StatefulWidget {
  const NewExpenseForm({ super.key });

  @override
  State<NewExpenseForm> createState() => _NewExpenseForm();
}

class _NewExpenseForm extends State<NewExpenseForm> {
  DateTime selectedDate = DateTime.now();
  String? selectedExpense = "Medicines";

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        color: Colors.white,
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      children: [
                        Icon(
                          Icons.add_circle_outline,
                          color: Color(0xFF000000),
                        ),
                        SizedBox(width: 3.0),
                        Text(
                            "Add a new expense",
                            style: const TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF000000)
                            )
                        )
                      ]
                  ),
                  SizedBox(height: 10.0),
                  Row(
                    children: [
                      ElevatedButton(
                        child: Text("Select Date"),
                        onPressed: () async {
                          final DateTime? dateTime = await showDatePicker(
                              context: context,
                              initialDate: selectedDate,
                              firstDate: DateTime(2000),
                              lastDate: DateTime(3000)
                          );
                          if (dateTime != null) {
                            setState(() {
                              selectedDate = dateTime;
                            });
                          }
                      }),
                      SizedBox(width: 10.0),
                      Text("${selectedDate.year}-${selectedDate.month}-${selectedDate.day}")
                    ],
                  ),
                  DropdownButton(
                      isExpanded: true,
                      value: selectedExpense,
                      hint: Text('Select an item'),
                      items: ["Medicines", "Clothes", "Online food", "Traveling"]
                        .map((value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          selectedExpense = newValue;
                        });
                      }
                  ),
                  SizedBox(height: 20.0),
                  TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Color(0xFFFFFFFF),
                      labelText: "Amount",
                      isDense: true,
                      contentPadding: EdgeInsets.all(8),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  )
                ]
            )
        )
    );
  }
}