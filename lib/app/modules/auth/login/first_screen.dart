part of './login.dart';

class FirstScreen extends GetView {
  final FirebaseAuth auth = FirebaseAuth.instance;

  FirstScreen({Key? key}) : super(key: key);
  final LoginController _loginController = Get.put(LoginController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.signIn.get())),
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
                    Strings.signInInfo.get(),
                    style: R.fonts.headline,
                  ),
                  SizedBox(
                    height: 20.hdp,
                  ),
                  GetBuilder<LoginController>(
                    init: LoginController(),
                    initState: (_) {},
                    builder: (_) {
                      return PhoneNumberInput(
                        onPhoneChanged: _.changePhoneNumber,
                        errorMessage: null,
                      );
                    },
                  ),
                  const SmallDivider(),
                  SizedBox(
                    height: 10.hdp,
                  ),
                  PrimaryButton(
                      text: Strings.signIn.get(),
                      onPressed: () async {
                        // page loader
                        EasyLoading.show(status: Strings.pleaseWait.get());

                        await Api.loginWithPhone(
                            phoneNumber: _loginController.phoneNumber,
                            handleFailed: _handleFailure,
                            onCodeSent: (verfID) {
                              _loginController.changeVerfID(verfID);
                              Get.to(() => LoginSecondScreen());
                            });
                      }),
                  TextButton(
                      onPressed: () {
                        Get.to(() => const Register());
                      },
                      child: Text(
                        Strings.createNewAccount.get(),
                        style: R.fonts.secondaryButton,
                      ))
                ]),
          ),
        ),
      ),
      backgroundColor: R.colors.body,
    );
  }

  _handleFailure() => Get.snackbar(
        Strings.unsuccessfulOperation.get(),
        Strings.pleaseTryAgain.get(),
        margin: const EdgeInsets.only(top: 60),
        backgroundColor: Colors.red.shade400,
        titleText: Text(
          Strings.unsuccessfulOperation.get(),
          style: R.fonts.caption.copyWith(color: Colors.white),
        ),
        messageText: Text(
          Strings.pleaseTryAgain.get(),
          style: R.fonts.formErrorMessage.copyWith(color: Colors.white),
        ),
      );
}
