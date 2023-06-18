// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unnecessary_const, constant_identifier_names

// **************************************************************************
// AutoLocalizedGenerator
// **************************************************************************

import 'package:auto_localized/auto_localized.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

@immutable
class AutoLocalizedData {
  static const supportedLocales = <Locale>[
    Locale('ar'),
  ];

  static const delegate = AutoLocalizationDelegate(supportedLocales);

  static const localizationsDelegates = [
    GlobalWidgetsLocalizations.delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    delegate,
  ];
}

extension AutoLocalizedContextExtension on BuildContext {
  List<Locale> get supportedLocales => AutoLocalizedData.supportedLocales;

  List<LocalizationsDelegate> get localizationsDelegates =>
      AutoLocalizedData.localizationsDelegates;

  String translate(
    LocalizedString string, [
    String arg1 = "",
    String arg2 = "",
    String arg3 = "",
    String arg4 = "",
    String arg5 = "",
  ]) =>
      string.when(
        plain: (string) => string.get(this),
        arg1: (string) => string.get(arg1, this),
        arg2: (string) => string.get(arg1, arg2, this),
        arg3: (string) => string.get(arg1, arg2, arg3, this),
        arg4: (string) => string.get(arg1, arg2, arg3, arg4, this),
        arg5: (string) => string.get(arg1, arg2, arg3, arg4, arg5, this),
      );
}

@immutable
class Strings {
  const Strings._();
  static const signIn = PlainLocalizedString(
    key: 'signIn',
    values: {
      'ar': '''تسجيل الدخول''',
    },
  );

  static const checkPhoneNumber = PlainLocalizedString(
    key: 'checkPhoneNumber',
    values: {
      'ar': '''التحقق من رقم الهاتف''',
    },
  );

  static const signInInfo = PlainLocalizedString(
    key: 'signInInfo',
    values: {
      'ar': '''لتسجيل الدخول يرجى ادخال رقم هاتفك للتحقق''',
    },
  );

  static const phoneNumber = PlainLocalizedString(
    key: 'phoneNumber',
    values: {
      'ar': '''رقم الهاتف''',
    },
  );

  static const enterPhoneNumber = PlainLocalizedString(
    key: 'enterPhoneNumber',
    values: {
      'ar': '''ادخل رقم الهاتف''',
    },
  );

  static const send = PlainLocalizedString(
    key: 'send',
    values: {
      'ar': '''إرسال''',
    },
  );

  static const createNewAccount = PlainLocalizedString(
    key: 'createNewAccount',
    values: {
      'ar': '''إنشاء حساب جديد''',
    },
  );

  static const checkPhoneNumberInfo = PlainLocalizedString(
    key: 'checkPhoneNumberInfo',
    values: {
      'ar': '''رسالة نصية سوف ترسل إلى هاتفك قم بإدخال الكود المرسل''',
    },
  );

  static const pressHere = PlainLocalizedString(
    key: 'pressHere',
    values: {
      'ar': '''إضغط هنا''',
    },
  );

  static const verfCode = PlainLocalizedString(
    key: 'verfCode',
    values: {
      'ar': '''رمز التحقق''',
    },
  );

  static const enterVerfCode = PlainLocalizedString(
    key: 'enterVerfCode',
    values: {
      'ar': '''ادخل رمز التحقق''',
    },
  );

  static const ownerName = PlainLocalizedString(
    key: 'ownerName',
    values: {
      'ar': '''إسم المالك''',
    },
  );

  static const enterOwnerName = PlainLocalizedString(
    key: 'enterOwnerName',
    values: {
      'ar': '''أدخل إسم المالك''',
    },
  );

  static const ownerPhoneNumber = PlainLocalizedString(
    key: 'ownerPhoneNumber',
    values: {
      'ar': '''رقم الهاتف الخاص بالمالك''',
    },
  );

  static const password = PlainLocalizedString(
    key: 'password',
    values: {
      'ar': '''كلمة السر''',
    },
  );

  static const retypePassword = PlainLocalizedString(
    key: 'retypePassword',
    values: {
      'ar': '''تأكيد كلمة السر''',
    },
  );

  static const businessName = PlainLocalizedString(
    key: 'businessName',
    values: {
      'ar': '''الأسم التجاري''',
    },
  );

  static const servicePhoneNumber = PlainLocalizedString(
    key: 'servicePhoneNumber',
    values: {
      'ar': '''رقم الهاتف الخاص بالخدمة''',
    },
  );

  static const bankAccountType = PlainLocalizedString(
    key: 'bankAccountType',
    values: {
      'ar': '''نوع الحساب البنكي''',
    },
  );

  static const bankAccountNumber = PlainLocalizedString(
    key: 'bankAccountNumber',
    values: {
      'ar': '''رقم الحساب البنكي''',
    },
  );

  static const state = PlainLocalizedString(
    key: 'state',
    values: {
      'ar': '''المحافظة''',
    },
  );

  static const address = PlainLocalizedString(
    key: 'address',
    values: {
      'ar': '''العنوان''',
    },
  );

  static const selectLocation = PlainLocalizedString(
    key: 'selectLocation',
    values: {
      'ar': '''تحديد العنوان على الخريطة''',
    },
  );

  static const serviceInfo = PlainLocalizedString(
    key: 'serviceInfo',
    values: {
      'ar': '''معلومات الخدمة''',
    },
  );

  static const addImage = PlainLocalizedString(
    key: 'addImage',
    values: {
      'ar': '''إضافة صورة''',
    },
  );

  static const next = PlainLocalizedString(
    key: 'next',
    values: {
      'ar': '''التالي''',
    },
  );

  static const region = PlainLocalizedString(
    key: 'region',
    values: {
      'ar': '''المحافظة''',
    },
  );

  static const pleaseWait = PlainLocalizedString(
    key: 'please_wait',
    values: {
      'ar': '''يرجى الأنتظار''',
    },
  );

  static const successfulOperation = PlainLocalizedString(
    key: 'successful_operation',
    values: {
      'ar': '''عملية ناجحة''',
    },
  );

  static const unsuccessfulOperation = PlainLocalizedString(
    key: 'unsuccessful_operation',
    values: {
      'ar': '''عملية غير ناجحة''',
    },
  );

  static const pleaseTryAgain = PlainLocalizedString(
    key: 'please_try_again',
    values: {
      'ar': '''الرجاء إعادة المحاولة''',
    },
  );

  static const imageUploadedSuccessfully = PlainLocalizedString(
    key: 'imageUploadedSuccessfully',
    values: {
      'ar': '''تم رفع الصور بنجاح''',
    },
  );

  static const chooseCategory = PlainLocalizedString(
    key: 'chooseCategory',
    values: {
      'ar': '''أختر قسم''',
    },
  );

  static const searchForSpecificCategory = PlainLocalizedString(
    key: 'searchForSpecificCategory',
    values: {
      'ar': '''البحث عن قسم معين''',
    },
  );

  static const hallName = PlainLocalizedString(
    key: 'hallName',
    values: {
      'ar': '''إسم الصالة''',
    },
  );

  static const addVideo = PlainLocalizedString(
    key: 'addVideo',
    values: {
      'ar': '''إضافة فيديو''',
    },
  );

  static const price = PlainLocalizedString(
    key: 'price',
    values: {
      'ar': '''السعر''',
    },
  );

  static const from = PlainLocalizedString(
    key: 'from',
    values: {
      'ar': '''من''',
    },
  );

  static const to = PlainLocalizedString(
    key: 'to',
    values: {
      'ar': '''الى''',
    },
  );

  static const deposit = PlainLocalizedString(
    key: 'deposit',
    values: {
      'ar': '''العربون''',
    },
  );

  static const addHall = PlainLocalizedString(
    key: 'addHall',
    values: {
      'ar': '''إضافة صالة''',
    },
  );

  static const hallSpeciality = PlainLocalizedString(
    key: 'hallSpeciality',
    values: {
      'ar': '''تخصص الصالة''',
    },
  );

  static const men = PlainLocalizedString(
    key: 'men',
    values: {
      'ar': '''رجال''',
    },
  );

  static const women = PlainLocalizedString(
    key: 'women',
    values: {
      'ar': '''نساء''',
    },
  );

  static const grad = PlainLocalizedString(
    key: 'grad',
    values: {
      'ar': '''حفلات تخرج''',
    },
  );

  static const kosha = PlainLocalizedString(
    key: 'kosha',
    values: {
      'ar': '''الكوشة''',
    },
  );

  static const withKosha = PlainLocalizedString(
    key: 'withKosha',
    values: {
      'ar': '''مع كوشة''',
    },
  );

  static const withoutKosha = PlainLocalizedString(
    key: 'withoutKosha',
    values: {
      'ar': '''بدون كوشة''',
    },
  );

  static const hallAddress = PlainLocalizedString(
    key: 'hallAddress',
    values: {
      'ar': '''عنوان الصالة''',
    },
  );
}
