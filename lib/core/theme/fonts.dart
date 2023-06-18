import 'package:flutter/cupertino.dart';
import '../util/RImport.dart';

class AppFont {
  final button = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Almarai',
    fontSize: 14.sp,
  );

  final secondaryButton = TextStyle(
    fontWeight: FontWeight.bold,
    fontFamily: 'Almarai',
    fontSize: 14.sp,
  );

  final headline = TextStyle(
    fontFamily: 'Almarai',
    fontWeight: FontWeight.bold,
    fontSize: 17.sp,
    height: 1.5,
    // color: R.colors.font,
  );

  final inputForm = TextStyle(
    fontFamily: 'Almarai',
    fontSize: 16.sp,
    // color: R.colors.secondaryFont,
  );

  final caption = TextStyle(
    fontSize: 14.sp,
    fontFamily: 'Almarai',
    // color: R.colors.captionFont,
  );

  final formErrorMessage = TextStyle(
    fontSize: 12.sp,
    fontFamily: 'Almarai',
    color: R.colors.error,
    // color: R.colors.captionFont,
  );
}
