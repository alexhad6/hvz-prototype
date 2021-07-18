import 'package:flutter/widgets.dart';
import 'package:hvz_prototype/app/variables.dart' show Colors;

class Section extends StatelessWidget {
  const Section({
    Key? key,
    required this.name,
    required this.icon,
    required this.child,
  }) : super(key: key);

  final String name;
  final IconData icon;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: child,
    );
  }
}
