import 'package:flutter/widgets.dart';
import 'package:hvz_prototype/app/variables.dart' show Icons;
import 'package:hvz_prototype/app/components/section.dart';

class BrainsSection extends Section {
  const BrainsSection({Key? key})
      : super(
          key: key,
          name: 'Brains',
          icon: Icons.account,
          child: const _BrainsSectionContent(),
        );
}

class _BrainsSectionContent extends StatelessWidget {
  const _BrainsSectionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Brains section'),
        SizedBox(height: 50),
        Text('This section will allow zombies to manage their brains'),
      ],
    );
  }
}
