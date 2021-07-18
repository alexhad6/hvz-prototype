import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' show Material;

class Error extends StatelessWidget {
  const Error({
    Key? key,
    required this.error,
  }) : super(key: key);

  final Object error;

  @override
  Widget build(BuildContext context) {
    print(error);

    return Material(
      child: Center(
        child: Text('Error :('),
      ),
    );
  }
}
