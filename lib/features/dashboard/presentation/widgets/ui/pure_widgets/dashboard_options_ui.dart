import "package:chinmay_expenses_app/features/updates/presentation/screens/wrappers/monthly_daily_expenses_screen_wrapper.dart";
import "package:flutter/material.dart";

// Import wrappers
import "package:chinmay_expenses_app/features/entry/presentation/screens/wrappers/entry_screen_wrapper.dart";

class DashboardOptionsUI extends StatelessWidget {
  final Function cardWidget;
  final Function textWidget;
  final Function iconWidget;
  final Function gestureDetectorWidget;

  const DashboardOptionsUI({
    required this.cardWidget,
    required this.textWidget,
    required this.iconWidget,
    required this.gestureDetectorWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return cardWidget(
      backgroundColor: 0xFFF0F5F5,
      margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
      childWidget: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            textWidget(
              text: "Manage your expenses",
              fontSize: 20.0
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: cardWidget(
                    backgroundColor: 0xFF0066CC,
                    margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                    childWidget: gestureDetectorWidget(
                      onTapFunction: () {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => entryScreenWrapper()
                        ));
                      },
                      childWidget: Container(
                        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        child: Column(
                          children: [
                            iconWidget(
                              icon: Icons.add_circle_outline,
                              iconSize: 45.0,
                              iconColor: 0xFFFFFFFF
                            ),
                            textWidget(
                              text: "Add Expense"
                            )
                          ],
                        )
                      )
                    )
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: cardWidget(
                    backgroundColor: 0xFF0066CC,
                    margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
                    childWidget: gestureDetectorWidget(
                      onTapFunction: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => monthlyDailyExpensesScreenWrapper()
                        ));
                      },
                      childWidget: Container(
                        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
                        child: Column(
                          children: [
                            iconWidget(
                              icon: Icons.mode_edit_outline_rounded,
                              iconSize: 45.0,
                              iconColor: 0xFFFFFFFF
                            ),
                            textWidget(
                              text: "Edit Expense"
                            )
                          ],
                        )
                      )
                    )
                  )
                )
              ],
            )
          ],
        )
      )
    );
  }
}