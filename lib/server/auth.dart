import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  // Prevents this class from being instantiated.
  Auth._();

  static Future<void> initialize() async {
    FirebaseAuth auth = FirebaseAuth.instance;
  }
}
