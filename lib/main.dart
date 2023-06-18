import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/material.dart';
import 'package:hezare_app/app/modules/home/home.dart';
import 'package:hezare_app/core/util/RImport.dart';
import 'dart:ui' as ui;
import 'package:get/get.dart';
import 'auto_localized.al.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // loader config
  EasyLoading.instance
    ..maskType = EasyLoadingMaskType.black
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQueryData.fromWindow(ui.window),
      child: Builder(builder: (context) {
        Responsive().init(
          ResponsiveArgs(
            mediaQueryData: MediaQuery.of(context),
            allowFontAccesibility: true,
            size: const Size(360, 640),
          ),
        );
        return AutoLocalizedApp(
          child: GetMaterialApp(
            supportedLocales: AutoLocalizedData.supportedLocales,
            localizationsDelegates: AutoLocalizedData.localizationsDelegates,
            locale: const Locale('ar'),
            fallbackLocale: const Locale('ar'),
            home: const Home(),
            title: 'Hezare',
            builder: EasyLoading.init(),
            debugShowCheckedModeBanner: false,
            theme: R.theme.lightTheme,
          ),
        );
      }),
    );
  }
}
