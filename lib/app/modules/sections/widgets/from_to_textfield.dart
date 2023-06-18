import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hezare_app/app/modules/sections/controller.dart';
import 'package:hezare_app/app/widgets/input_decoration.dart';
import 'package:hezare_app/auto_localized.al.dart';

class FromToTextField extends StatelessWidget {
  const FromToTextField({
    Key? key,
    required this.onFromChange,
    required this.onToChange,
  }) : super(key: key);

  final Function(String) onFromChange;
  final Function(String) onToChange;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: TextField(
            decoration: inputDecoration(
              label: Strings.from.get(),
            ),
            onChanged: onFromChange,
            keyboardType: TextInputType.number,
            // controller: ctrl,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Flexible(
          child: TextField(
              decoration: inputDecoration(
                label: Strings.to.get(),
              ),
              onChanged: onToChange,
              keyboardType: TextInputType.number),
        ),
      ],
    );
  }
}
