import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' show Material;

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: Text('Loading...'),
      ),
    );
  }
}
