import 'package:flutter/material.dart';
import 'package:hezare_app/core/util/RImport.dart';

class PhoneNumberLabel extends StatelessWidget {
  const PhoneNumberLabel({Key? key, required this.text}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topRight,
      margin: const EdgeInsets.only(bottom: 7),
      child: Text(
        text,
        style: R.fonts.caption,
      ),
    );
  }
}
