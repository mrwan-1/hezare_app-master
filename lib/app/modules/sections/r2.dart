part of './reservation.dart';

class Reservation2 extends StatelessWidget {
  Reservation2({Key? key}) : super(key: key);

  final HallController hallController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text(Strings.addHall.get())),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 20,
          ),
          GetBuilder<HallController>(
            init: HallController(),
            builder: (_) {
              return DropdownMenu(
                items: const [
                  "سعه القاعة",
                  "من 1 - 500",
                  "من 500 - 800",
                  "من 800 - 1200",
                  "من 1200 - 1500",
                  "من 1500 - 1800",
                  "من 1800 - 2000",
                  "من 2000 - 2500",
                ],
                selectedItem: _.hallCapacity,
                handleChange: _.changeHallCapacity,
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            Strings.hallSpeciality.get(),
            style: R.fonts.inputForm.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(children: [
            GetBuilder<HallController>(
              init: HallController(),
              builder: (_) {
                return CustomRadioBtn(
                  text: Strings.men.get(),
                  active: _.hallSpecialty['رجال'],
                  onPressed: () {
                    _.changeHallSpeciality('رجال', !_.hallSpecialty['رجال']);
                  },
                );
              },
            ),
            const SizedBox(
              width: 10,
            ),
            GetBuilder<HallController>(
              init: HallController(),
              builder: (_) {
                return CustomRadioBtn(
                  text: Strings.women.get(),
                  active: _.hallSpecialty['نساء'],
                  onPressed: () {
                    hallController.changeHallSpeciality(
                        'نساء', !hallController.hallSpecialty['نساء']);
                  },
                );
              },
            ),
            const SizedBox(
              width: 10,
            ),
            GetBuilder<HallController>(
              init: HallController(),
              builder: (_) {
                return CustomRadioBtn(
                    text: Strings.grad.get(),
                    active: _.hallSpecialty['حفلات تخرج'],
                    onPressed: () {
                      _.changeHallSpeciality('حفلات تخرج',
                          !hallController.hallSpecialty['حفلات تخرج']);
                    });
              },
            )
          ]),
          const SizedBox(
            height: 20,
          ),
          Text(
            Strings.kosha.get(),
            style: R.fonts.inputForm.copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),
          GetBuilder<HallController>(
            init: HallController(),
            initState: (_) {},
            builder: (_) {
              return Row(children: [
                CustomRadioBtn(
                  text: Strings.withKosha.get(),
                  active: _.kosha == true,
                  onPressed: () {
                    _.changeKosha(true);
                  },
                ),
                const SizedBox(
                  width: 10,
                ),
                CustomRadioBtn(
                  text: Strings.withoutKosha.get(),
                  customWidth: 110.wdp,
                  active: _.kosha == false,
                  onPressed: () {
                    _.changeKosha(false);
                  },
                )
              ]);
            },
          ),
          const Spacer(),
          PrimaryButton(
              text: Strings.next.get(),
              onPressed: () {
                // hallController.onSubmit();
                Get.to(() => Reservation3());
              }),
        ]),
      ),
    );
  }
}

class CustomRadioBtn extends StatelessWidget {
  const CustomRadioBtn({
    Key? key,
    required this.text,
    required this.active,
    required this.onPressed,
    this.customWidth,
  }) : super(key: key);

  final String text;
  final bool active;
  final Function() onPressed;
  final double? customWidth;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.hdp,
      width: customWidth ?? 100.wdp,
      child: ElevatedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(
            active ? Colors.black87 : Colors.white,
          )),
          onPressed: onPressed,
          child: Text(
            text,
            style: active
                ? R.fonts.button
                : R.fonts.button.copyWith(color: Colors.black),
          )),
    );
  }
}
