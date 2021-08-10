import 'package:flutter/widgets.dart';
import 'package:hvz_prototype/app/variables.dart' show Colors;

class Button extends StatefulWidget {
  const Button({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);

  final String text;
  final void Function() onTap;

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  Color _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      onTapDown: (TapDownDetails _) => setState(() {
        _color = Colors.darkGreen;
      }),
      onTapCancel: () => setState(() {
        _color = Colors.green;
      }),
      onTapUp: (TapUpDetails _) => setState(() {
        _color = Colors.green;
      }),
      child: Container(
        decoration: BoxDecoration(
          color: _color,
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.only(
          left: 16,
          top: 10,
          right: 16,
          bottom: 10,
        ),
        child: Text(widget.text),
      ),
    );
  }
}
