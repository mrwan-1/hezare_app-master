import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:hezare_app/app/data/providers/firebase_provider.dart';
import 'package:hezare_app/core/util/RImport.dart';

class LoginController extends GetxController {
  String phoneNumber = '';
  String? verfID;
  String? verfCode;

  changePhoneNumber(String? value) => phoneNumber = value!;
  changeVerfID(String? value) => verfID = value;
  changeVerfCode(String? value) => verfCode = value;

  onSubmit() {
    Api.verifyOTP(
        verificationID: verfID!,
        smsCode: verfCode!,
        onSucess: () {
          Get.snackbar("عملية ناجحة", "تم تسجيل الدخول بنجاح",
              margin: const EdgeInsets.only(top: 60),
              backgroundColor: Colors.green,
              titleText: Text(
                'عملية ناجحة',
                style: R.fonts.caption,
              ),
              messageText: Text(
                'تم تسجيل الدخول بنجاح',
                style: R.fonts.formErrorMessage.copyWith(color: Colors.white),
              ));
        },
        onError: () {
          Get.snackbar("عملية غير ناجحة", "الكود المدخل غير صحيح",
              margin: const EdgeInsets.only(top: 60),
              backgroundColor: Colors.red.shade400,
              titleText: Text(
                'عملية غير ناجحة',
                style: R.fonts.caption.copyWith(color: Colors.white),
              ),
              messageText: Text(
                'الكود المدخل غير صحيح',
                style: R.fonts.formErrorMessage.copyWith(color: Colors.white),
              ));
        });
  }
}
