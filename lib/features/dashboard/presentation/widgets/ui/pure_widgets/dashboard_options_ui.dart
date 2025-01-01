import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class DashboardOptionsUI extends StatelessWidget {
  final Function cardWidget;
  final Function textWidget;
  final Function iconWidget;
  final Function sizedBoxWidget;
  final Function gestureDetectorWidget;

  const DashboardOptionsUI({
    required this.cardWidget,
    required this.textWidget,
    required this.iconWidget,
    required this.sizedBoxWidget,
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
            sizedBoxWidget(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  flex: 1,
                  child: gestureDetectorWidget(
                    onTapFunction: () {
                      context.go("/entry");
                    },
                    childWidget: cardWidget(
                        backgroundColor: 0xFF000000,
                        margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
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
                                  text: "Add Expense",
                                  textColor: 0xFFFFFFFF
                              )
                            ],
                          )
                        )
                    )
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: gestureDetectorWidget(
                    onTapFunction: () {
                      context.go("/monthlyDailyExpenses");
                    },
                    childWidget: cardWidget(
                      backgroundColor: 0xFF000000,
                      margin: EdgeInsets.fromLTRB(0.0, 5.0, 5.0, 5.0),
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
                              text: "Edit Expense",
                              textColor: 0xFFFFFFFF,
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