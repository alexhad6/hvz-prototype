import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart' as material show Icons;
import 'package:hvz_prototype/app/components/section.dart';
import 'package:hvz_prototype/app/sections/home_section.dart';
import 'package:hvz_prototype/app/sections/info_section.dart';
import 'package:hvz_prototype/app/sections/eat_section.dart';
import 'package:hvz_prototype/app/sections/brains_section.dart';
import 'package:hvz_prototype/app/sections/settings_section.dart';

/// Stores [Color] used throughout the app.
///
///  * `white`: used as a background color for sections.
///  * `green`: used in the app bar and nav bar for zombie UI.
///  * `darkGreen`: used in the zombie UI nav bar to show selected item.
class Colors {
  // Prevent this class from being instatiated.
  Colors._();

  static const white = Color(0xFFFFFFFF);
  static const green = Color(0xFF4CAF50);
  static const darkGreen = Color(0xFF2E7D32);
}

/// Stores [IconData] used throughout the app.
///
///  * `home`: icon for home screen sections.
///  * `info`: icon for game info section.
///  * `eat`: icon for eat human section (zombies only).
///  * `account`: icon for brain transaction section (zombies only).
///  * `settings` icon for settings section.
class Icons {
  // Prevent this class from being instatiated.
  Icons._();

  static const IconData home = material.Icons.home;
  static const IconData info = material.Icons.article;
  static const IconData eat = material.Icons.restaurant;
  static const IconData account = material.Icons.account_balance;
  static const IconData settings = material.Icons.settings;
}

/// Groups of sections depending on the player (human, zombie, or mod).
///
///  * `zombie`: The sections displayed for zombie players.
class Sections {
  // Prevent this class from being instatiated.
  Sections._();

  static const List<Section> zombie = [
    HomeSection(),
    InfoSection(),
    EatSection(),
    BrainsSection(),
    SettingsSection(),
  ];
}
