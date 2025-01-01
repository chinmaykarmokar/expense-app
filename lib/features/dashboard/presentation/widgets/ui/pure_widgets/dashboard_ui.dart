import "package:flutter/material.dart";

// Import widget utils
import "package:chinmay_expenses_app/features/dashboard/presentation/widgets/utils/day_greeting.dart";

class DashboardUI extends StatelessWidget {
  final dynamic totalExpense;
  final Function textWidget;
  final Function iconWidget;
  final Function sizedBoxWidget;
  final Function cardWidget;
  final Function gestureDetectorWidget;
  final Function dashboardOptions;

  const DashboardUI({
    required this.totalExpense,
    required this.textWidget,
    required this.iconWidget,
    required this.sizedBoxWidget,
    required this.cardWidget,
    required this.gestureDetectorWidget,
    required this.dashboardOptions,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      textWidget(
                          text: getDayGreeting(),
                          fontSize: 30.0,
                          textColor: 0xFF000000
                      ),
                      cardWidget(
                        childWidget: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    iconWidget(
                                        icon: Icons.account_balance_wallet_outlined,
                                        iconColor: 0xFFFFFFFF,
                                        iconSize: 30.0
                                    ),
                                    sizedBoxWidget(width: 3.0),
                                    textWidget(
                                      text: "Expenses this month",
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      textColor: 0xFFFFFFFF,
                                    )
                                  ],
                                ),
                                sizedBoxWidget(height: 5.0),
                                textWidget(
                                  text: "₹$totalExpense",
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  textColor: 0xFFFFFFFF,
                                ),
                              ],
                            ),
                          ),
                        backgroundColor: 0xFF000000,
                        margin: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                      ),
                      dashboardOptions()
                    ],
                  )
              )
          )
      )
    );
  }
}