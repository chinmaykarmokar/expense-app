import "dart:ui";
import "package:flutter/material.dart";
import "newExpenseForm.dart";

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();
    int hour = currentDate.hour;
    String dayGreeting = (hour >= 5 && hour < 12) ? "Good Morning, Chinmay!" :
                         (hour >= 12 && hour < 18) ? "Good Afternoon, Chinmay!" :
                         (hour >= 18 && hour < 22) ? "Good Evening, Chinmay!" :
                         "Good Night, Chinmay!";

    return Padding(
        padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                dayGreeting,
                style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF404040)
                ),
              ),
              Card(
                  elevation: 5,
                  margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                  color: Color(0xFF3366CC),
                  child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                                Icons.account_balance_wallet_outlined,
                                color: Color(0xFFFFFFFF)
                            ),
                            SizedBox(width: 3.0),
                            Text(
                              "Expenses this month",
                              style: const TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFFFFFFFF),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 5.0),
                        Text(
                            "₹1,000.00",
                            style: const TextStyle(
                              fontSize: 30.0,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFFFFFFF)
                            )
                        ),
                        Text(
                            "See detailed expenditure",
                            style: const TextStyle(
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFFFFFFFF),
                              color: Color(0xFFFFFFFF)
                            )
                        )
                      ],
                    ),
                  )
              ),
              NewExpenseForm(),
              // Expanded(
              //   child: NewExpenseForm()
              // )
            ],
          ),
    );
  }
}