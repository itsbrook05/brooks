import 'package:flutter/material.dart';
import 'package:folio/sections/about/about.dart';
import 'package:folio/sections/contact/contact.dart';
import 'package:folio/sections/home/home.dart';
import 'package:folio/sections/portfolio/portfolio.dart';
import 'package:folio/sections/services/services.dart';
import 'package:folio/widget/footer.dart';

class StaticUtils {
  static const String hi = 'assets/hi.gif';

  // photos
  static const String mobilePhoto = 'assets/photos/profile.png';
  static const String coloredPhoto = "assets/photos/profile.png";
  static const String blackWhitePhoto = 'assets/photos/profile0.png';

  // work
  static const String dsc = 'assets/work/dsc.png';
  static const String sastaticket = 'assets/work/st.png';
  static const String university = 'assets/work/cui.png';
  static const String fullterIsb = 'assets/work/flutterIsl.png';

  // services
  static const String uiux = 'assets/services/ui.png';
  static const String videoEditing = 'assets/services/film-editing.png';
  static const String appDev = 'assets/services/app.png';
  static const String rapid = 'assets/services/rapid.png';
  static const String openSource = 'assets/services/open.png';
  static const String openSourceBlack = 'assets/services/open_b.png';

  static const List<String> socialIconURL = [
    "https://img.icons8.com/metro/208/ffffff/facebook-new--v2.png",
    "https://img.icons8.com/ios-glyphs/480/ffffff/instagram-new.png",
    "https://img.icons8.com/android/480/ffffff/twitter.png",
    "https://img.icons8.com/metro/308/ffffff/linkedin.png",
    "https://img.icons8.com/material-rounded/384/ffffff/github.png",
    "https://img.icons8.com/?size=100&id=37326&format=png&color=000000"
  ];

  static const List<String> socialLinks = [
    "https://www.facebook.com/noufel.benabid.3",
    "https://www.instagram.com/codewithbrook",
    "https://x.com/codewithbrook",
    "https://www.linkedin.com/in/noufel-benabid-2b20502a6/",
    "https://github.com/itsbrook05",
    "https://www.youtube.com/@CodeWithBrook"
    
  ];

  static const String resume =
      'https://drive.google.com/file/d/1E6nnwurOtObNvageSZNK9gyCWFqefVN-/view';

  static const String gitHub = 'https://github.com/itsbrook05';
}

class BodyUtils {
  static const List<Widget> views = [
    HomePage(),
    About(),
    Services(),
    Portfolio(),
    Contact(),
    Footer(),
  ];
}
