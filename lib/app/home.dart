import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' show Material;
import 'package:hvz_prototype/app/variables.dart' show Colors;
import 'package:hvz_prototype/app/components/section.dart';
import 'package:hvz_prototype/app/components/app_bar.dart';
import 'package:hvz_prototype/app/components/nav_bar.dart';

/// Top-level home screen widget that allows for navigation between individual
/// sections.
class Home extends StatefulWidget {
  const Home({
    Key? key,
    required this.sections,
  }) : super(key: key);

  final List<Section> sections;

  @override
  _HomeState createState() => _HomeState();
}

/// The internal state of [Home], which keeps track of the section the user is
/// currently on.
class _HomeState extends State<Home> {
  int _currentSection = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.green,
      child: Column(
        children: <Widget>[
          const AppBar(),
          Expanded(
            child: widget.sections[_currentSection],
          ),
          NavBar(
            sections: widget.sections,
            currentIndex: _currentSection,
            onTap: (index) => setState(() {
              _currentSection = index;
            }),
          ),
        ],
      ),
    );
  }
}
