import "package:chinmay_expenses_app/application.dart";
import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (_, __) => const ApplicationWidget(),
      routes: [
        GoRoute(
          path: "oneDayExpense",
          builder: (BuildContext context, GoRouterState state) {
            return Text("Single expense page");
          }
        )
      ]
    )
  ]
);