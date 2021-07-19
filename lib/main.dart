import 'package:hvz_prototype/app/app.dart';
import 'package:hvz_prototype/server/server.dart';

/// The function that is run when the app starts.
void main() {
  App.initialize(Server.initialize);
}
