import 'package:flutter/widgets.dart';
import 'package:hvz_prototype/app/variables.dart' show Icons;
import 'package:hvz_prototype/app/components/section.dart';

class EatSection extends Section {
  const EatSection({Key? key})
      : super(
          key: key,
          name: 'Eat',
          icon: Icons.eat,
          child: const _EatSectionContent(),
        );
}

class _EatSectionContent extends StatelessWidget {
  const _EatSectionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Eat section'),
        SizedBox(height: 50),
        Text('This section will allow zombies to eat humans'),
      ],
    );
  }
}
