import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hezare_app/auto_localized.al.dart';
import 'package:hezare_app/core/util/RImport.dart';

class UploadImage extends StatelessWidget {
  const UploadImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26, blurRadius: 8.0, offset: Offset(0, 0))
        ],
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 18,
          ),
          SvgPicture.asset(R.images.camera),
          const SizedBox(
            height: 8,
          ),
          Text(
            Strings.addImage.get(),
            style: R.fonts.caption,
          ),
        ],
      ),
      width: 105,
      height: 105,
    );
  }
}
