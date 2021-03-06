import 'package:firebase_auth/firebase_auth.dart';

class Auth {
  // Prevents this class from being instantiated.
  Auth._();

  static Future<void> initialize() async {
    FirebaseAuth auth = FirebaseAuth.instance;
  }

  static Future<void> createUser({
    required String email,
    required String password,
  }) async {
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
      print(e);
    }
  }
}
