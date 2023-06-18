part of './reservation.dart';

class Reservation3 extends StatelessWidget {
  Reservation3({Key? key}) : super(key: key);

  HallController hallController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("تأجير")),
      body: Scrollbar(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(children: [
              GetBuilder<HallController>(
                init: HallController(),
                builder: (_) {
                  return TextField(
                    decoration: inputDecoration(
                      label: Strings.hallAddress.get(),
                      borderRadius: 10,
                    ),
                    onChanged: _.changeAddress,
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topRight,
                child:
                    Text(Strings.selectLocation.get(), style: R.fonts.caption),
              ),
              SizedBox(
                height: 10.hdp,
              ),
              Container(
                width: double.infinity,
                height: 200.hdp,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GetBuilder<HallController>(
                init: HallController(),
                builder: (_) {
                  return TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: null,
                    decoration: InputDecoration(
                      label: Text("تفاصيل إضافية", style: R.fonts.caption),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onChanged: _.changeMoreDetails,
                  );
                },
              ),
              // const Spacer(),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                text: Strings.next.get(),
                onPressed: () {
                  Get.to(() => Reservation4());
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
