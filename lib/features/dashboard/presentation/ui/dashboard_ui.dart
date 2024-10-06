import "package:flutter/material.dart";
import "package:chinmay_expenses_app/features/dashboard/utils/day_greeting.dart";

// Import common widgets
import "package:chinmay_expenses_app/common/widgets/atoms/text_widget.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/icon_widget.dart";
import "package:chinmay_expenses_app/common/widgets/atoms/sized_box_widget.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/card_widget.dart";
import "package:chinmay_expenses_app/common/widgets/molecules/gesture_detector_widget.dart";

class Dashboard extends StatelessWidget {
  final int totalExpense;

  const Dashboard({
    super.key,
    required this.totalExpense
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
                      TextWidget(
                          text: getDayGreeting(),
                          fontSize: 30.0,
                          fontWeight: FontWeight.w600,
                          textColor: 0xFF000000
                      ),
                      CardWidget(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Row(
                                  children: [
                                    IconWidget(
                                        icon: Icons.account_balance_wallet_outlined,
                                        iconColor: 0xFFFFFFFF,
                                        iconSize: 30.0
                                    ),
                                    SizedBoxWidget(property: "width", value: 3.0),
                                    TextWidget(
                                      text: "Expenses this month",
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w500,
                                      textColor: 0xFFFFFFFF,
                                    )
                                  ],
                                ),
                                const SizedBoxWidget(property: "height", value: 5.0),
                                TextWidget(
                                  text: "₹$totalExpense",
                                  fontSize: 32.0,
                                  fontWeight: FontWeight.bold,
                                  textColor: 0xFFFFFFFF,
                                ),
                                const GestureDetectorWidget(
                                    text: "Full month expenditure",
                                    fontSize: 12.0,
                                    textColor: 0xFFFFFFFF,
                                )
                              ],
                            ),
                          )
                      )
                    ],
                  )
              )
          )
      )
    );
  }
}