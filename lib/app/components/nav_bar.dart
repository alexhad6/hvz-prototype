import 'package:flutter/widgets.dart';
import 'package:hvz_prototype/app/variables.dart' show Colors;
import 'package:hvz_prototype/app/components/section.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key? key,
    required this.sections,
    required this.currentIndex,
    required this.onTap,
  }) : super(key: key);

  final List<Section> sections;
  final int currentIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      width: double.infinity,
      height: 60 + MediaQuery.of(context).viewPadding.bottom,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          for (int i = 0; i < sections.length; i++)
            _NavButton(
              selected: i == currentIndex,
              icon: sections[i].icon,
              onTap: () => onTap(i),
            ),
        ],
      ),
    );
  }
}

class _NavButton extends StatelessWidget {
  const _NavButton({
    Key? key,
    required this.selected,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  final bool selected;
  final IconData icon;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: double.infinity,
          color: selected ? Colors.darkGreen : Colors.green,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewPadding.bottom,
            ),
            child: Icon(
              icon,
              size: 36.0,
            ),
          ),
        ),
      ),
    );
  }
}
