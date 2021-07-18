import 'package:flutter/widgets.dart';
import 'package:hvz_prototype/app/variables.dart' show Icons;
import 'package:hvz_prototype/app/components/section.dart';

class HomeSection extends Section {
  const HomeSection({Key? key})
      : super(
          key: key,
          name: 'Home',
          icon: Icons.home,
          child: const _HomeSectionContent(),
        );
}

class _HomeSectionContent extends StatelessWidget {
  const _HomeSectionContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Text('Home section'),
        SizedBox(height: 50),
        Text('This section will show important information'),
      ],
    );
  }
}
