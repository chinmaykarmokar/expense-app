import "package:flutter/material.dart";

// Import screens
import "package:chinmay_expenses_app/features/dashboard/presentation/screens/wrappers/dashboard_screen_wrapper.dart";

class ApplicationWidget extends StatefulWidget {
  const ApplicationWidget({ super.key });

  @override
  ApplicationState createState() => ApplicationState();
}

class ApplicationState extends State<ApplicationWidget> {
  int currentIndex = 0;

  static List<Widget> options = <Widget>[
    dashboardScreenWrapper(),
    const Text("About")
  ];

  void handleNavigationClick(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: options.elementAt(currentIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.space_dashboard_outlined,
                ),
                label: "Dashboard"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                label: "About"
            )
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          selectedItemColor: const Color(0xFF000099),
          unselectedItemColor: const Color(0xFF8C8C8C),
          iconSize: 35,
          onTap: handleNavigationClick,
          elevation: 5
      ),
    );
  }
}