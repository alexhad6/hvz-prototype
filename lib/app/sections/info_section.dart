import 'package:flutter/widgets.dart';
import 'package:hvz_prototype/app/variables.dart' show Icons;
import 'package:hvz_prototype/app/components/section.dart';

class InfoSection extends Section {
  const InfoSection({Key? key})
      : super(
          key: key,
          name: 'Info',
          icon: Icons.info,
          child: const _InfoSectionContent(),
        );
}

class _InfoSectionContent extends StatelessWidget {
  const _InfoSectionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Info section'),
        SizedBox(height: 50),
        Text('This section will contain important game information'),
      ],
    );
  }
}
