import 'package:splashscreen/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:hezare_app/app/modules/auth/login/login.dart';
import 'package:hezare_app/core/util/RImport.dart';

class MySplashScreen extends StatelessWidget {
  const MySplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      navigateAfterSeconds: SplashScreen(),
      image: Image.asset(
        R.images.logoWithText,
      ),
      photoSize: 110,
    );
  }
}
