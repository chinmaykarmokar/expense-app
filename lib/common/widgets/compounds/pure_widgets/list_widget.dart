import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class ListWidget extends StatelessWidget {
  final List listItems;
  final Function textWidget;
  final Function sizedBoxWidget;
  final Function gestureDetectorWidget;

  const ListWidget({
    required this.listItems,
    required this.textWidget,
    required this.sizedBoxWidget,
    required this.gestureDetectorWidget,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        final listItem = listItems[index];

        return gestureDetectorWidget(
          onTapFunction: () {
            context.go("/dailyExpenses/${listItem["date"]["value"]}");
          },
          childWidget: Container(
            color: Colors.transparent,
            child: Column(
              children: [
                sizedBoxWidget(height: MediaQuery.of(context).size.height * 0.02),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align items side by side
                  children: listItem.entries.map<Widget>((entry) {
                    final key = entry.key;
                    final data = entry.value;

                    return Padding(
                      padding: EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                      child: textWidget(
                        text: data["value"],
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500
                      )
                    );
                  }).toList(),
                ),
                sizedBoxWidget(height: MediaQuery.of(context).size.height * 0.02)
              ],
            )
          ),
        );
      },
      separatorBuilder: (context, index) => Divider(
        thickness: 0.3,
      ),
    );
  }
}