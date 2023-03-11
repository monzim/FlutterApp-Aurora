import 'package:flutter/foundation.dart' show immutable;
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

@immutable
class AppFonts {
  static List<String?> list = [
    GoogleFonts.ubuntu().fontFamily,
    GoogleFonts.ibmPlexSans().fontFamily,
    GoogleFonts.openSans().fontFamily,
    GoogleFonts.roboto().fontFamily,
    GoogleFonts.notoSans().fontFamily,
    GoogleFonts.notoSansBengali().fontFamily,
    GoogleFonts.lato().fontFamily,
    GoogleFonts.montserrat().fontFamily,
    GoogleFonts.shanti().fontFamily,
    GoogleFonts.raleway().fontFamily,
    GoogleFonts.ptSans().fontFamily,
    GoogleFonts.ptSerif().fontFamily,
    GoogleFonts.robotoCondensed().fontFamily,
  ];
}
