part of './reservation.dart';

class Reservation4 extends StatelessWidget {
  Reservation4({Key? key}) : super(key: key);

  HallController hallController = Get.find();
  List<Widget> _buildList() {
    List sections = [
      {
        "name": "إسم الصالة",
        "subtitle": hallController.hallName,
      },
      {
        "name": "السعر",
        "subtitle":
            "من ${hallController.price["from"]} إلى ${hallController.price['to']} "
      },
      {"name": "العربون", "subtitle": hallController.deposit},
      {"name": "تخصص الصالة", "subtitle": hallController.showHallSpeciality()},
      {"name": "السعة", "subtitle": hallController.hallCapacity},
      {"name": "الكوشة", "subtitle": hallController.showKosha()},
      {"name": "عنوان الصالة", "subtitle": hallController.address},
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
              trailing: const Icon(Icons.keyboard_arrow_left_rounded),
              onTap: () {
                // Get.to(() => const Reservation());
              },
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
    return Scaffold(
      appBar: AppBar(title: const Text("مراجعة البيانات")),
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              ..._buildList(),
              const Spacer(),
              PrimaryButton(
                  text: "تأكيد",
                  onPressed: () {
                    hallController.onSubmit();
                  }),
            ],
          )),
    );
  }
}
