import 'package:flutter/widgets.dart';
import 'package:hvz_prototype/app/variables.dart' show Icons;
import 'package:hvz_prototype/app/components/section.dart';

class SettingsSection extends Section {
  const SettingsSection({Key? key})
      : super(
          key: key,
          name: 'Settings',
          icon: Icons.settings,
          child: const _SettingsSectionContent(),
        );
}

class _SettingsSectionContent extends StatelessWidget {
  const _SettingsSectionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Settings section'),
        SizedBox(height: 50),
        Text('This section will allow users to view their settings'),
      ],
    );
  }
}
