import "package:flutter/material.dart";

class DashboardScreen extends StatelessWidget {
  final Function dashboardProviderWrapper;

  const DashboardScreen({
    required this.dashboardProviderWrapper,
    super.key
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: dashboardProviderWrapper()
      ),
    );
  }
}