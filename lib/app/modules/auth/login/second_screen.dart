part of './login.dart';

class LoginSecondScreen extends GetView {
  LoginSecondScreen({
    Key? key,
    this.loginFromRegister,
  }) : super(key: key);
  final LoginController _loginController = Get.find();
  final RegisterController registerController = Get.put(RegisterController());
  final bool? loginFromRegister;
  @override
  Widget build(BuildContext context) {
    EasyLoading.dismiss();
    return Scaffold(
      appBar: AppBar(title: Text(Strings.checkPhoneNumber.get())),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.wdp, vertical: 20.hdp),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  SizedBox(
                    height: 40.hdp,
                  ),
                  SizedBox(
                    child: Image.asset(R.images.logoWithText),
                    width: 130.wdp,
                  ),
                  SizedBox(
                    height: 40.hdp,
                  ),
                  Text(
                    Strings.checkPhoneNumberInfo.get(),
                    style: R.fonts.headline,
                  ),
                  SizedBox(
                    height: 20.hdp,
                  ),
                  TextFormField(
                    decoration: inputDecoration(
                      label: Strings.verfCode.get(),
                      prefixIcon: Icons.email,
                    ),
                    keyboardType: TextInputType.number,
                    onChanged: _loginController.changeVerfCode,
                  ),
                  const SmallDivider(),
                  SizedBox(
                    height: 20.hdp,
                  ),
                  PrimaryButton(
                      text: Strings.signIn.get(),
                      onPressed: () {
                        _loginController.onSubmit();
                        if (loginFromRegister != null) {
                          registerController.onSubmit();
                        }
                        Get.to(() => const Dashboard());
                      })
                ]),
          ),
        ),
      ),
      backgroundColor: R.colors.body,
    );
  }
}
