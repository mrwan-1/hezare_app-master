part of '../introduction.dart';

class NextButton extends StatelessWidget {
  const NextButton({
    Key? key,
    required this.onClick,
    this.isActive,
  }) : super(key: key);

  final Function() onClick;
  final bool? isActive;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      child: Text(
        "التالي",
        style: R.fonts.button,
      ),
    );
  }
}

class BackButton extends StatelessWidget {
  const BackButton({
    Key? key,
    required this.onClick,
    this.isActive = true,
  }) : super(key: key);

  final Function() onClick;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(
        "تخطي",
        style: R.fonts.button,
      ),
      onPressed: () {
        Get.to(() => Login());
      },
    );
  }
}
