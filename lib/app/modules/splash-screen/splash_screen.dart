import 'package:flutter/material.dart';
import 'package:hezare_app/app/modules/auth/login/login.dart';
import './introduction.dart';
import './components/slide_page_right.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Introduction(
      index: 0,
      image: "people.svg",
      headerText: "وصول أكثر",
      bodyText:
          "دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت",
      nexthandler: () {
        return Navigator.push(
          context,
          SlideRightRoute(
            page: Introduction(
              index: 1,
              image: "Date picker-pana.svg",
              headerText: "إدارة الحجوزات والخدمات",
              bodyText:
                  "دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت",
              nexthandler: () {
                Navigator.push(
                  context,
                  SlideRightRoute(
                    page: Introduction(
                      index: 2,
                      image: "Mobile Marketing-pana (1).svg",
                      headerText: "التسويق بفعالية",
                      bodyText:
                          "دولاريمكيو لايودانتيوم,توتام ريم أبيرأم,أيكيو أبسا كيواي أب أللو أنفينتوري فيرأتاتيس ايت",
                      nexthandler: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Login(),
                          ),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
