import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hezare_app/app/widgets/dropdown_input.dart';
import 'package:hezare_app/app/widgets/input_decoration.dart';
import 'package:hezare_app/app/widgets/primary_button.dart';
import 'package:hezare_app/auto_localized.al.dart';
import 'package:hezare_app/core/util/RImport.dart';
import 'package:hezare_app/core/util/utils_functions.dart';

import 'controller.dart';
import 'widgets/from_to_textfield.dart';

part './r2.dart';
part './address.dart';
part './check_data.dart';
part './widgets/upload_box.dart';

class Reservation extends StatelessWidget {
  Reservation({Key? key}) : super(key: key);

  List<Widget> _showUploadedImages() {
    return hallController.imageData!.map((e) {
      return SizedBox(
        width: 200.wdp,
        height: 130.hdp,
        child: Image.memory(
          e.imageFile!.readAsBytesSync(),
          fit: BoxFit.cover,
        ),
      );
    }).toList();
  }

  final HallController hallController = Get.put(HallController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.addHall.get())),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            GetBuilder<HallController>(
              init: HallController(),
              builder: (_) {
                return TextField(
                  decoration: inputDecoration(
                    label: Strings.hallName.get(),
                    borderRadius: 10,
                  ),
                  onChanged: _.changeHallName,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: GetBuilder<HallController>(
                init: HallController(),
                builder: (_) {
                  return Row(
                    children: [
                      UploadBox(
                        text: Strings.addImage.get(),
                        icon: Icons.camera_alt_outlined,
                        onTapHandler: () async {
                          List<UploadImageData>? imageData =
                              await uploadImageMulti();
                          _.changeImageData(imageData);
                        },
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      if (hallController.imageData != null)
                        ..._showUploadedImages()
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // UploadBox(
            //   text: Strings.addVideo.get(),
            //   icon: Icons.video_call_outlined,
            //   onTapHandler: () async {
            //     UploadImageData? videoData = await uploadVideo();
            //     print(
            //         "video object ${videoData!.fileName} ${videoData.imageFile}");
            //   },
            // ),
            const SizedBox(
              height: 20,
            ),
            GetBuilder<HallController>(
              init: HallController(),
              builder: (_) {
                return TextField(
                  decoration: inputDecoration(
                    label: Strings.deposit.get(),
                    borderRadius: 10,
                  ),
                  onChanged: _.changeDeposit,
                );
              },
            ),
            // const Spacer(),
            const SizedBox(
              height: 20,
            ),
            Text(
              Strings.price.get(),
              style: R.fonts.inputForm
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            const SizedBox(height: 10),
            FromToTextField(
              onFromChange: hallController.changeFromPrice,
              onToChange: hallController.changeToPrice,
            ),

            const SizedBox(height: 20),
            PrimaryButton(
                text: Strings.next.get(),
                onPressed: () {
                  hallController.onSubmit();
                  Get.to(() => Reservation2());
                }),
          ]),
        ),
      ),
    );
  }
}
