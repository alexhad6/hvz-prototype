import 'package:flutter/widgets.dart' show WidgetsFlutterBinding;
import 'package:firebase_core/firebase_core.dart';
import 'package:hvz_prototype/server/database.dart';

class Server {
  // Prevents this class from being instantiated.
  Server._();

  static Future<void> initialize() async {
    // Must be called before initializing Firebase core. See
    // https://firebase.flutter.dev/docs/overview.
    WidgetsFlutterBinding.ensureInitialized();

    await Firebase.initializeApp();
    await Database.initialize();
  }
}
