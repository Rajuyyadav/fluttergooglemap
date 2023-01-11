import 'package:flutter/material.dart';

abstract class Fonts {

  static String get helveticaNeunRegular => 'Helvetica-Neue-Regular';
  static String get helveticaNeunMedium => 'Helvetica-Neue-Medium';
  static String get helveticaNeunLight => 'Helvetica-Neue-Light';
  static String get helveticaNeunBold => 'Helvetica-Neue-Bold';
  static String get helveticaNeunSemiBold => 'Helvetica-Neue-semiBold';

  static String get monserratSemiBold => "Montserrat-SemiBold";
  static String get monserratBold => "Montserrat-Bold";
  static String get monserratMedium => "Montserrat-Medium";
  static String get monserratRegular => "Montserrat-Regular";
}

abstract class AppColors {
  static Color get primaryColor => const Color(0xFF212121);
  static Color get primaryColor2 => const Color(0xff2A2A2A);

  static Color get whiteColorDFD => const Color(0xffFDFDFD);

  static Color get progressBarColor => const Color(0xFF4DDADA);
  static Color get progressBarNonColor => const Color(0xFFEBEBEB);
  static Color get lightWhiteColor => const Color(0xffE2E2E2);
  static Color get bgGreyColor => const Color(0xffF4F4F4);
  static Color get whiteColor => const Color(0xFFFFFBFF);
  static Color get buttonColor => const Color(0xFF8800EC);
  static Color get textColor => const Color(0xFFE4E1E6);
  static Color get cardColor => const Color(0xFF2A2A2D);
  static Color get secondCardColor => const Color(0xFFD6E3FF);
  static Color get borderColor => const Color(0xFFEAEAEA);
  static Color get hintColor => const Color(0xFF444347);
  static Color get tfLabelColor => const Color(0xFF006A6A);
  static Color get bsBackGroundColor => const Color(0xff1b1b1b0a);
  static Color get lightGreyColor1E6 => const Color(0xFFE4E1E6);


  //=======================

  static Color get lightBlack121 => const Color(0xFF212121);
  static Color get lightBlack747 => const Color(0xFF474747);
  static Color get lightBlackE5E => const Color(0xFF5E5E5E);
  static Color get lightBlackA2A => const Color(0xFF2A2A2A);
  static Color get black000 => const Color(0xFF000000);
  static Color get lightBlack347 => const Color(0xFF444347);

  static Color get lightBlack57F => const Color(0xFF7C757F);

  static Color get purple0EC => const Color(0xFF8800EC);
  static Color get blueCBD => const Color(0xFF005CBD);
  static Color get whiteFFF => const Color(0xFFffffff);
  static Color get pinkColor2FF => const Color(0xFFCB92FF);
  static Color get pinkColor0EC => const Color(0xFF8800EC);
  static Color get pinkColor052 => const Color(0xFF2B0052);
  static Color get lightBlack106 => const Color(0xFF012106);


//==================


}

class Ts {
  // ------------- Helvetica Neun --------------- //

  static TextStyle get helveticaLight => TextStyle(
      fontFamily: Fonts.helveticaNeunLight, fontWeight: FontWeight.w300);

  static TextStyle get helveticaRegular => TextStyle(
      fontFamily: Fonts.helveticaNeunRegular, fontWeight: FontWeight.w400);

  static TextStyle get helveticaMedium => TextStyle(
      fontFamily: Fonts.helveticaNeunMedium, fontWeight: FontWeight.w500);

  static TextStyle get helveticaSemiBold => TextStyle(
      fontFamily: Fonts.helveticaNeunSemiBold, fontWeight: FontWeight.w600);

  static TextStyle get helveticaBold => TextStyle(
      fontFamily: Fonts.helveticaNeunBold, fontWeight: FontWeight.w700);

  // static TextStyle get helveticaSemiBold => TextStyle(fontFamily: Fonts.helveticaNeunSemiBold, fontWeight: FontWeight.w700);
  // static TextStyle get helveticaBold => TextStyle(fontFamily: Fonts.helveticaNeunBold, fontWeight: FontWeight.w800);
  // static TextStyle get helveticaLight => TextStyle(fontFamily: Fonts.helveticaNeunLight, fontWeight: FontWeight.w400);
  // static TextStyle get helveticaRegular => TextStyle(fontFamily: Fonts.helveticaNeunRegular, fontWeight: FontWeight.w500);
  // static TextStyle get helveticaMedium => TextStyle(fontFamily: Fonts.helveticaNeunMedium, fontWeight: FontWeight.w600);

  // ------------- MONSERRAT --------------- //

  static TextStyle get monserratRegular => TextStyle(
      fontFamily: Fonts.monserratRegular, fontWeight: FontWeight.w400);

  static TextStyle get monserratMedium =>
      TextStyle(fontFamily: Fonts.monserratMedium, fontWeight: FontWeight.w500);

  static TextStyle get monserratSemiBold => TextStyle(
      fontFamily: Fonts.monserratSemiBold, fontWeight: FontWeight.w600);

  static TextStyle get monserratBold =>
      TextStyle(fontFamily: Fonts.monserratBold, fontWeight: FontWeight.w700);
}

extension TextStyleHelpers on TextStyle {
  TextStyle get const50 => copyWith(fontSize: 50);
  TextStyle get const42 => copyWith(fontSize: 42);
  TextStyle get const24 => copyWith(fontSize: 24);
  TextStyle get const26 => copyWith(fontSize: 26);
  TextStyle get const20 => copyWith(fontSize: 20);
  TextStyle get const18 => copyWith(fontSize: 18);
  TextStyle get const34 => copyWith(fontSize: 34);
  TextStyle get const16 => copyWith(fontSize: 16);
  TextStyle get const17 => copyWith(fontSize: 17);
  TextStyle get const14 => copyWith(fontSize: 14);
  TextStyle get const15 => copyWith(fontSize: 15);
  TextStyle get const12 => copyWith(fontSize: 12);
  TextStyle get const36 => copyWith(fontSize: 36);
  TextStyle get const10 => copyWith(fontSize: 10);
  TextStyle get const9 => copyWith(fontSize: 9);
  TextStyle get const30 => copyWith(fontSize: 30);
  TextStyle get const52 => copyWith(fontSize: 52);
  TextStyle get const32 => copyWith(fontSize: 32);
  TextStyle get const22 => copyWith(fontSize: 22);
  TextStyle get const11 => copyWith(fontSize: 11);
  TextStyle get const8 => copyWith(fontSize: 8);
  TextStyle get const28 => copyWith(fontSize: 28);
  TextStyle get h12 => copyWith(height: 1.2);
  TextStyle get h13 => copyWith(height: 1.3);
  TextStyle get h14 => copyWith(height: 1.4);
  TextStyle get h15 => copyWith(height: 1.5);
  TextStyle get h16 => copyWith(height: 1.6);
  TextStyle get h17 => copyWith(height: 1.7);
  TextStyle get h18 => copyWith(height: 1.8);
  TextStyle get h20 => copyWith(height: 2.0);
  TextStyle get h24 => copyWith(height: 2.4);

  TextStyle get l01 => copyWith(letterSpacing: 0.1);
  TextStyle get l02 => copyWith(letterSpacing: 0.2);
  TextStyle get l04 => copyWith(letterSpacing: 0.4);
  TextStyle get l05 => copyWith(letterSpacing: 0.5);

  TextStyle get l06 => copyWith(letterSpacing: 0.6);
  TextStyle get l015 => copyWith(letterSpacing: 0.15);
  TextStyle get l10 => copyWith(letterSpacing: 1.0);
  TextStyle get l11 => copyWith(letterSpacing: 1.1);
  TextStyle get l12 => copyWith(letterSpacing: 1.2);
  TextStyle get l14 => copyWith(letterSpacing: 1.4);
  TextStyle get l15 => copyWith(letterSpacing: 1.6);
  TextStyle get l20 => copyWith(letterSpacing: 2.0);

  TextStyle constS(double val) => copyWith(fontSize: val);

  ///#DE1692
  TextStyle get primaryColor => copyWith(color: AppColors.primaryColor);
  TextStyle get lightWhiteColor => copyWith(color: AppColors.lightWhiteColor);
  TextStyle get lightWhiteColor2c6 => copyWith(color: const Color(0xffC6C6C6));
  TextStyle get whiteColor => copyWith(color: const Color(0xFF231F20));

  TextStyle get hintColor => copyWith(color: AppColors.whiteColor);

  ///#FFFFFF
  TextStyle get white => copyWith(color: Colors.white);
  TextStyle get tfLabelColor => copyWith(color:  const Color(0xFF006A6A));

  TextStyle get lightWhite => copyWith(color: AppColors.lightWhiteColor);
  TextStyle get lightGreyWhite => copyWith(color: const Color(0xffC6C6C6));

  TextStyle get primaryColor2 => copyWith(color: AppColors.primaryColor2);

  TextStyle get underLine => copyWith(decoration: TextDecoration.underline);
  TextStyle get noDecoration => copyWith(decoration: TextDecoration.none);
  TextStyle get italic => copyWith(fontStyle: FontStyle.italic);

  TextStyle get lineThrough => copyWith(decoration: TextDecoration.lineThrough);

  // TextStyle get secondaryColor => copyWith(color: AppColors.secondaryColor);


  //===================

  TextStyle get lightBlack121 => copyWith(color: AppColors.lightBlack121);
  TextStyle get lightBlack747 => copyWith(color: AppColors.lightBlack747);
  TextStyle get lightBlackE5E => copyWith(color: AppColors.lightBlackE5E);
  TextStyle get lightBlackA2A => copyWith(color: AppColors.lightBlackA2A);
  TextStyle get black000 => copyWith(color: AppColors.black000);
  TextStyle get lightBlack347 => copyWith(color: AppColors.lightBlack347);
  TextStyle get purple0EC => copyWith(color: AppColors.purple0EC);
  TextStyle get blueCBD => copyWith(color: AppColors.blueCBD);
  TextStyle get whiteFFF => copyWith(color: AppColors.whiteFFF);
  TextStyle get lightGreyColor1E6 => copyWith(color: AppColors.lightGreyColor1E6);
  TextStyle get darkBlue052 => copyWith(color: AppColors.pinkColor052);
  TextStyle get lightBlack106 => copyWith(color: AppColors.lightBlack106);
  TextStyle get pinkColor2FF => copyWith(color: AppColors.pinkColor2FF);
  TextStyle get pinkColor0EC => copyWith(color: AppColors.pinkColor0EC);


  //================

  Widget text(String? text) {
    if (text == null) {
      return Container();
    }
    return Text(
      text,
      style: this,
    );
  }

  Widget textJustify(String? text) {
    if (text == null) {
      return Container();
    }
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: this,
    );
  }

  Widget textCenter(String? text) {
    if (text == null) {
      return Container();
    }
    return Text(
      text,
      style: this,
      textAlign: TextAlign.center,
    );
  }

  //TextStyle get secondaryGrey => copyWith(color: AppColors.secondaryGrey);
  TextStyle col(int hash) => copyWith(color: Color(hash));
  TextStyle lh(double h) => copyWith(height: (h / 10));
  TextStyle ls(double l) => copyWith(letterSpacing: (l));
  TextStyle ws(double w) => copyWith(wordSpacing: (w));

  TextStyle get opac40 => copyWith(color: color?.withOpacity(0.4));
  TextStyle get opac50 => copyWith(color: color?.withOpacity(0.5));
  TextStyle get opac60 => copyWith(color: color?.withOpacity(0.6));
  TextStyle get opac70 => copyWith(color: color?.withOpacity(0.7));
  TextStyle get opac80 => copyWith(color: color?.withOpacity(0.8));
  TextStyle get opac90 => copyWith(color: color?.withOpacity(0.9));
}
