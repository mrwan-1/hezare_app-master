import 'package:hezare_app/core/theme/colors.dart';
import 'package:hezare_app/core/theme/fonts.dart';
import 'package:hezare_app/core/theme/theme.dart';
import 'package:hezare_app/core/util/images.dart';
export 'package:hezare_app/core/util/responsive.dart';

abstract class R {
  static Images get images => Images();
  static Colors get colors => Colors();
  static AppTheme get theme => AppTheme();
  static AppFont get fonts => AppFont();
}
