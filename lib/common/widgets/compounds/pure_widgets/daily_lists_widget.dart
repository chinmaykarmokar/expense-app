import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class DailyListsWidget extends StatelessWidget {
  final String? date;
  final Map listItems;
  final Function textWidget;
  final Function formButtonWidget;

  const DailyListsWidget({
    required this.date,
    required this.listItems,
    required this.textWidget,
    required this.formButtonWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    List keys = listItems.keys.toList();
    List values = listItems.values.toList();

    return ListView.separated(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        String category = keys[index].toUpperCase();
        dynamic amount = values[index];

        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                textWidget(
                  text: category
                ),
                textWidget(
                  text: "Amount: ₹${amount.toString()}"
                )
              ],
            ),
            formButtonWidget(
              onPressedFunction: () {
                context.go("/updateExpenses/$date/$category/$amount");
              },
              childWidget: textWidget(
                text: "Update"
              )
            )
          ],
        );
      },
      separatorBuilder: (context, index) => Divider(
        thickness: 0.3,
      ),
    );
  }
}