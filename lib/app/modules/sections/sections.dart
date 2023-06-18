import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hezare_app/app/modules/sections/reservation.dart';
import 'package:hezare_app/auto_localized.al.dart';
import 'package:hezare_app/core/util/RImport.dart';

class Sections extends StatelessWidget {
  const Sections({Key? key}) : super(key: key);

  List<Widget> _buildList() {
    List sections = [
      {"name": "الصالات", "icon": Icons.home},
      {"name": "الخيم", "icon": Icons.home},
      {"name": "الفنانين والفنانات", "icon": Icons.home},
      {"name": "برع ومزمار", "icon": Icons.home},
      {"name": "المنشدين والمزوملين ", "icon": Icons.home},
      {"name": "مذيعين واعلاميين", "icon": Icons.home},
      {"name": "عروض مسرحية", "icon": Icons.home},
      {"name": "الكوش", "icon": Icons.home},
    ];

    return sections
        .map(
          (e) => Container(
            margin: const EdgeInsets.only(bottom: 5),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.circular(3),
            ),
            child: ListTile(
              leading: Icon(e["icon"]),
              trailing: const Icon(Icons.keyboard_arrow_left_rounded),
              onTap: () {
                Get.to(() => Reservation());
              },
              title: Text(
                e['name'],
                style: R.fonts.caption,
              ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.chooseCategory.get()),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            const SizedBox(
              height: 10,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                label: Text(
                  Strings.searchForSpecificCategory.get(),
                  style: R.fonts.caption,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ..._buildList(),
          ]),
        ),
      ),
    );
  }
}
