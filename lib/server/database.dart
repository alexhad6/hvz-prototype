import 'package:cloud_firestore/cloud_firestore.dart';

class Database {
  // Prevents this class from being instantiated.
  Database._();

  static Future<void> initialize() async {
    CollectionReference users = FirebaseFirestore.instance.collection('users');
  }
}
