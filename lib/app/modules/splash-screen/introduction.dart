import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:hezare_app/app/modules/auth/login/login.dart';
import 'package:hezare_app/core/util/RImport.dart';

part 'components/circles.dart';
part 'components/navigation_buttons.dart';

class Introduction extends StatelessWidget {
  const Introduction({
    Key? key,
    required this.image,
    required this.headerText,
    required this.bodyText,
    required this.nexthandler,
    required this.index,
  }) : super(key: key);

  final String image;
  final String headerText;
  final String bodyText;
  final Function nexthandler;
  final int index;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(title: const Text("التعريف بالخدمات")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                width: size.width,
                height: size.height * 0.4,
                child: SvgPicture.asset('assets/images/$image'),
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                headerText,
                style: Theme.of(context)
                    .textTheme
                    .headline5
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 27),
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Center(
                  child: Text(
                    bodyText,
                    style: R.fonts.inputForm.copyWith(
                      color: Colors.grey.shade600,
                      height: 1.8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Circles(
                index: index,
              ),
              const Spacer(),
              Container(
                child: Row(
                  children: [
                    BackButton(
                      onClick: () {},
                    ),
                    const Spacer(),
                    NextButton(
                      onClick: () {
                        nexthandler();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
