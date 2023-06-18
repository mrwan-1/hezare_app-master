import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hezare_app/app/data/providers/firebase_provider.dart';
import 'package:hezare_app/app/modules/auth/register/controller.dart';
import 'package:hezare_app/app/modules/auth/register/register.dart';
import 'package:hezare_app/app/widgets/input_decoration.dart';
import 'package:hezare_app/app/modules/dashboard/dashboard.dart';
import 'package:hezare_app/auto_localized.al.dart';
import 'package:hezare_app/core/util/RImport.dart';
import 'package:hezare_app/app/modules/auth/widgets/phone_number_input.dart';
import 'package:hezare_app/app/widgets/primary_button.dart';
import 'package:hezare_app/app/widgets/small_divider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';

import 'controller.dart';
part 'first_screen.dart';
part 'second_screen.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirstScreen();
  }
}
