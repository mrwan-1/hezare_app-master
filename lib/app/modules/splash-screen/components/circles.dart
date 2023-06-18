part of '../introduction.dart';

class Circles extends StatelessWidget {
  const Circles({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Circle(active: index == 0 ? true : false),
          SizedBox(
            width: 5,
          ),
          Circle(active: index == 1 ? true : false),
          SizedBox(
            width: 5,
          ),
          Circle(active: index == 2 ? true : false),
        ],
      ),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({
    Key? key,
    required this.active,
  }) : super(key: key);

  final bool active;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: active ? 30 : 15,
      height: 10,
      decoration: BoxDecoration(
        color: Colors.yellow.shade700,
        borderRadius: BorderRadius.circular(30),
      ),
    );
  }
}
