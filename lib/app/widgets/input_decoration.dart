import 'package:flutter/material.dart';
import 'package:hezare_app/core/util/RImport.dart';

InputDecoration inputDecoration({
  required String label,
  IconData? prefixIcon,
  String? errorText,
  double borderRadius = 0,
}) {
  return InputDecoration(
    prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
    border: OutlineInputBorder(
      borderSide: const BorderSide(),
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    label: Text(
      label,
      style: R.fonts.caption,
    ),
    errorStyle: R.fonts.formErrorMessage,
    errorText: errorText,
  );
}
