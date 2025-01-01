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

        return Container(
          padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textWidget(
                      text: category
                  ),
                  textWidget(
                    text: "₹${amount.toString()}",
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500
                  )
                ],
              ),
              formButtonWidget(
                onPressedFunction: () {
                  context.go("/updateExpenses/$date/$category/$amount");
                },
                childWidget: textWidget(
                  text: "Update",
                  textColor: 0xFFFFFFFF,
                ),
                backgroundColor: 0xFF000000,
                borderWidth: 2.0,
                buttonRadius: 10.0,
                padding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0)
              )
            ],
          )
        );
      },
      separatorBuilder: (context, index) => Divider(
        thickness: 0.5,
      ),
    );
  }
}