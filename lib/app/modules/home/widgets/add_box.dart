part of '../home.dart';

class AddBox extends StatelessWidget {
  const AddBox({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(() => const Sections());
      },
      child: Container(
        padding: const EdgeInsets.all(12),
        width: 107.wdp,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey.shade300),
          borderRadius: BorderRadius.circular(12),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Colors.black26, blurRadius: 3, offset: Offset(0, 0))
          ],
        ),
        child: Column(
          children: [
            Text(
              text,
              style: R.fonts.inputForm.copyWith(fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(6),
              child: const Icon(
                Icons.add,
                color: Colors.white,
              ),
              decoration: const BoxDecoration(
                color: Colors.black87,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
