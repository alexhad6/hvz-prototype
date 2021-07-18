import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' show MaterialApp;
import 'package:hvz_prototype/app/home.dart';
import 'package:hvz_prototype/app/variables.dart' show Colors, Sections;

/// Represents the application component that is responsible for UI and logic
/// that is run locally on the user's device.
class App {
  // Prevents this class from being instantiated.
  App._();

  /// Initializes the UI and calls an additional asynchronous intialization
  /// function, displaying a loading screen until everything is initialized.
  static void initialize() {
    runApp(MaterialApp(
      title: 'HvZ Prototype',
      color: Colors.green,
      home: const Home(
        sections: Sections.zombie,
      ),
    ));
  }
}
