import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hezare_app/core/util/RImport.dart';

class DropdownMenu extends StatelessWidget {
  const DropdownMenu({
    Key? key,
    required this.items,
    required this.handleChange,
    required this.selectedItem,
  }) : super(key: key);

  final String? selectedItem;
  final Function handleChange;
  final List<String> items;
  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 5,
        ),
        child: DropdownButton(
          style: R.fonts.caption.copyWith(color: Colors.black),
          value: selectedItem ?? items[0],
          items: items
              .map((e) => DropdownMenuItem<String>(
                    child: Text(e),
                    value: e,
                  ))
              .toList(),
          onChanged: (item) {
            handleChange(item as String);
          },
          underline: Container(), //remove underline
          isExpanded: true,
        ),
      ),
    );
  }
}
