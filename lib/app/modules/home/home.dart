import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hezare_app/app/modules/sections/sections.dart';
import 'package:hezare_app/core/util/RImport.dart';

part './widgets/header.dart';
part './widgets/services_list.dart';
part './widgets/add_box.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const Header(),
            // -------------
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AddBox(text: "إضافة خدمة"),
                AddBox(text: "إضافة حجز"),
                AddBox(text: "إضافة إعلان"),
              ],
            ),
            // --------
            const SizedBox(
              height: 60,
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: const [
                  Text("خدماتي"),
                  Spacer(),
                  Text("رؤية الجميع"),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const ServicesList(),
            ])
          ],
        ),
      ),
    );
  }
}
