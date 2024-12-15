import "package:flutter/material.dart";

// Import router
import "package:chinmay_expenses_app/config/routes/routes.dart";

// Import application.dart
import "package:chinmay_expenses_app/application.dart";

void main() => runApp(
  MaterialApp.router(
    routerConfig: router
    // home: ApplicationWidget()
  )
);