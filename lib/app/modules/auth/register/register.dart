import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:hezare_app/app/data/providers/firebase_provider.dart';
import 'package:hezare_app/app/modules/auth/login/controller.dart';
import 'package:hezare_app/app/modules/auth/login/login.dart';

import 'package:hezare_app/app/widgets/dropdown_input.dart';
import 'package:hezare_app/app/widgets/primary_button.dart';
import 'package:hezare_app/app/widgets/small_divider.dart';
import 'package:hezare_app/auto_localized.al.dart';
import 'package:hezare_app/core/util/RImport.dart';
import 'package:hezare_app/core/util/utils_functions.dart';

import '../../../widgets/input_decoration.dart';
import '../widgets/phone_number_input.dart';
import '../widgets/phone_number_label.dart';
import '../widgets/upload_widget.dart';
import 'controller.dart';

part 'first_screen.dart';
part 'second_screen.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FirstScreen();
  }
}
