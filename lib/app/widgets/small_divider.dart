import 'package:flutter/material.dart';
import 'package:hezare_app/core/util/RImport.dart';

class SmallDivider extends StatelessWidget {
  const SmallDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Style
    final height = 5.hdp;
    final width = 30.wdp;
    final radius = 25.0;

    // padding
    const left = 8.0;
    const right = 8.0;
    const top = 20.0;
    const bottom = 8.0;

    return Padding(
      padding: const EdgeInsets.only(
          left: left, right: right, top: top, bottom: bottom),
      child: Center(
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: R.colors.divider,
            borderRadius: BorderRadius.all(
              Radius.circular(radius),
            ),
          ),
        ),
      ),
    );
  }
}
