part of '../reservation.dart';

class UploadBox extends StatelessWidget {
  const UploadBox({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTapHandler,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final Function()? onTapHandler;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapHandler,
      child: Container(
        width: 200.wdp,
        height: 130.hdp,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade400),
            color: Colors.white,
            boxShadow: const <BoxShadow>[
              BoxShadow(
                  color: Colors.black26, blurRadius: 3, offset: Offset(0, 0))
            ]),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 60,
              ),
              Text(
                text,
                style: R.fonts.caption,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
