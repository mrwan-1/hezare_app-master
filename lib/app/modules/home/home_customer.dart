import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hezare_app/app/modules/sections/sections.dart';
import 'package:hezare_app/core/util/RImport.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'home.dart';

class CustomerHome extends StatelessWidget {
  const CustomerHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 8),
                      child: const Icon(
                        Icons.menu,
                        size: 30,
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ],
                ),
                Container(
                  child: Image.asset(
                    R.images.appNameLogo,
                    width: 80,
                  ),
                ),
                Row(children: [
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey.shade200,
                    ),
                    child: const Icon(Icons.shopping_bag_outlined),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                ]),
              ],
            ),
            // -------------
            const SizedBox(
              height: 20,
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                label: Text(
                  "البحث عن صنف أو منتج",
                  style: R.fonts.caption,
                ),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    EnabledCategoryBtn(
                      text: 'الكل',
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    DisabledCategoryBtn(text: 'الصالات'),
                    SizedBox(
                      width: 15,
                    ),
                    DisabledCategoryBtn(text: "فنانين وفنانات"),
                    SizedBox(
                      width: 15,
                    ),
                    DisabledCategoryBtn(
                      text: "الخيم",
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    DisabledCategoryBtn(text: "ملبوسات"),
                    SizedBox(
                      width: 15,
                    ),
                    DisabledCategoryBtn(text: 'تصوير')
                  ]),
            ),
            const SizedBox(
              height: 10,
            ),
            // --------
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15)),
              height: 120.hdp,
              child: Center(
                  child: Center(
                child: Text(
                  "الأعلانات",
                  style: R.fonts.headline,
                ),
              )),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "الصالات",
                            style: R.fonts.headline,
                          ),
                          const Spacer(),
                          Text("رؤية الجميع", style: R.fonts.caption),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.to(() => HallDetails());
                              },
                              child: SizedBox(
                                width: 220,
                                child: Card(
                                  clipBehavior: Clip.antiAlias,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text(
                                          'قاعة السعيدة',
                                          style: R.fonts.inputForm,
                                        ),
                                        subtitle: Text(
                                          'صنعاء شارع الزبيري',
                                          style: TextStyle(
                                              color: Colors.black
                                                  .withOpacity(0.6)),
                                        ),
                                      ),
                                      Image.asset('assets/images/hall.jpg'),
                                      ButtonBar(
                                        alignment: MainAxisAlignment.start,
                                        children: [
                                          FlatButton(
                                            textColor: const Color(0xFF6200EE),
                                            onPressed: () {
                                              // Perform some action
                                            },
                                            child: const Text('تعديل'),
                                          ),
                                          FlatButton(
                                            textColor: const Color(0xFF6200EE),
                                            onPressed: () {
                                              // Perform some action
                                            },
                                            child: const Text('حذف'),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class EnabledCategoryBtn extends StatelessWidget {
  const EnabledCategoryBtn({
    Key? key,
    required this.text,
  }) : super(key: key);
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(
        text,
        style: R.fonts.button.copyWith(fontWeight: FontWeight.w400),
      ),
      style: ButtonStyle(
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(
            vertical: 12,
            horizontal: 20,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            // Change your radius here
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}

class DisabledCategoryBtn extends StatelessWidget {
  const DisabledCategoryBtn({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        child: Text(text,
            style: R.fonts.button
                .copyWith(color: Colors.black, fontWeight: FontWeight.w300)),
        style: ButtonStyle(
          side: MaterialStateProperty.all(
              BorderSide(color: Colors.grey.shade400)),
          padding: MaterialStateProperty.all(
            const EdgeInsets.symmetric(
              vertical: 12,
              horizontal: 20,
            ),
          ),
          backgroundColor: MaterialStateProperty.all(Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              // Change your radius here
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ));
  }
}

class HallDetails extends StatelessWidget {
  const HallDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("تفاصيل الصاله")),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 200.hdp,
            child: ImageSlideshow(
              /// Width of the [ImageSlideshow].
              width: double.infinity,

              /// Height of the [ImageSlideshow].
              height: 200,

              /// The page to show when first creating the [ImageSlideshow].
              initialPage: 0,

              /// The color to paint the indicator.
              indicatorColor: Colors.blue,

              /// The color to paint behind th indicator.
              indicatorBackgroundColor: Colors.grey,

              /// The widgets to display in the [ImageSlideshow].
              /// Add the sample image file into the images folder
              children: [
                Image.asset(
                  "assets/images/hall.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/hall.jpg",
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  "assets/images/hall.jpg",
                  fit: BoxFit.cover,
                ),
              ],

              /// Called whenever the page in the center of the viewport changes.
              onPageChanged: (value) {
                print('Page changed: $value');
              },

              /// Auto scroll interval.
              /// Do not auto scroll with null or 0.
              // autoPlayInterval: 3000,

              /// Loops back to first slide.
              // isLoop: true,
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "قاعة السعيدة",
                        style: R.fonts.headline,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسكينج أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا . يوت انيم أد مينيم فينايم,كيواس نوستريدأكسير سيتاشن يللأمكو لابورأس نيسي يت أليكيوب أكس أيا ",
                        style: R.fonts.caption.copyWith(height: 1.5),
                        softWrap: true,
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      DetailsTable(),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("إستفسار", style: R.fonts.button),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  )),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          ElevatedButton(
                              onPressed: () {},
                              child: Text("حجز مبدئي", style: R.fonts.button),
                              style: ButtonStyle(
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 20),
                                  ),
                                  shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                      // Change your radius here
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ))),
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsTable extends StatelessWidget {
  DetailsTable({Key? key}) : super(key: key);

  List<Widget> _buildList() {
    List sections = [
      {
        "name": "السعر",
        "subtitle": 'من 2000 الى 2000',
      },
      {
        "name": "العربون",
        "subtitle": '10000',
      },
      {
        "name": "تخصص الصالة",
        "subtitle": 'رجال، نساء، حفلات تخرج',
      },
      {
        "name": "السعة",
        "subtitle": "من 800-1000",
      },
      {
        "name": "الكوشة",
        "subtitle": "بدون كوشة",
      },
      {
        "name": "العنوان",
        "subtitle": "شارع الزبيري",
      },
      // {"name": "الوسائط", "icon": Icons.home},
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
              title: Text(
                e['name'],
                style: R.fonts.caption,
              ),
              subtitle: Text(
                e['subtitle'],
                style: R.fonts.caption.copyWith(fontSize: 13.sp),
              ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildList(),
    );
  }
}
