import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'font_provider.g.dart';

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

@riverpod
class AppFontService extends _$AppFontService {
  @override
  String? build() {
    return GoogleFonts.ibmPlexSans().fontFamily;
  }

  void setFontFamily(String? fontFamily) {
    state = fontFamily;
  }

  void setUbuntuFontFamily() {
    setFontFamily(GoogleFonts.ubuntu().fontFamily);
  }
}
