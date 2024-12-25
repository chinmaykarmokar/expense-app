import "package:flutter/material.dart";
import "package:go_router/go_router.dart";

import "package:chinmay_expenses_app/application.dart";

// Import page wrappers
import "package:chinmay_expenses_app/features/dashboard/presentation/screens/wrappers/dashboard_screen_wrapper.dart";
import "package:chinmay_expenses_app/features/entry/presentation/screens/wrappers/entry_screen_wrapper.dart";
import "package:chinmay_expenses_app/features/updates/presentation/screens/wrappers/monthly_daily_expenses_screen_wrapper.dart";
import "package:chinmay_expenses_app/features/updates/presentation/screens/wrappers/daily_expenses_screen_wrapper.dart";
import "package:chinmay_expenses_app/features/updates/presentation/screens/wrappers/update_expenses_screen_wrapper.dart";

final router = GoRouter(
  routes: [
    GoRoute(
      path: "/",
      builder: (_, __) => const ApplicationWidget(),
      routes: [
        GoRoute(
          path: "dashboard",
          builder: (BuildContext context, GoRouterState state) {
            return dashboardScreenWrapper();
          }
        ),
        GoRoute(
          path: "entry",
          builder: (BuildContext context, GoRouterState state) {
            return entryScreenWrapper();
          }
        ),
        GoRoute(
          path: "monthlyDailyExpenses",
          builder: (BuildContext context, GoRouterState state) {
            return monthlyDailyExpensesScreenWrapper();
          }
        ),
        GoRoute(
          path: "dailyExpenses/:date",
          builder: (BuildContext context, GoRouterState state) {
            String? date = state.pathParameters["date"];
            return dailyExpensesScreenWrapper(
              date: date
            );
          }
        ),
        GoRoute(
          path: "updateExpenses/:date/:type/:price",
          builder: (BuildContext context, GoRouterState state) {
            String? date = state.pathParameters["date"];
            String? type = state.pathParameters["type"];
            String? price = state.pathParameters["price"];
            return updateExpensesScreenWrapper(
              date: date,
              type: type,
              price: double.parse(price!)
            );
          }
        )
      ]
    )
  ]
);