import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

class ListWidget extends StatelessWidget {
  final List listItems;
  final Function gestureDetectorWidget;

  const ListWidget({
    required this.listItems,
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
          childWidget: Card(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: listItem.entries.map<Widget>((entry) {
                final key = entry.key;
                final data = entry.value;

                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("${data["value"]}")
                  ],
                );
              }).toList(),
              )
          )
        );
      },
      separatorBuilder: (context, index) => Divider(
        thickness: 0.3,
      ),
    );
  }
}