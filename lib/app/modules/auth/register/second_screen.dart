part of './register.dart';

class SecondScreen extends GetView {
  SecondScreen({Key? key}) : super(key: key);

  final LoginController loginController = Get.put(LoginController());
  final RegisterController registerController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.createNewAccount.get()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              GetBuilder<RegisterController>(
                init: RegisterController(),
                builder: (_) {
                  return DropdownMenu(
                    items: const [
                      "اختيار نوع الحساب البنكي",
                      "فلوسك",
                      "بنك اليمن والكويت",
                      "البنك الدولي"
                    ],
                    selectedItem: _.bankAccountType,
                    handleChange: _.changeBankAccountType,
                  );
                },
              ),
              SizedBox(
                height: 20.hdp,
              ),
              GetBuilder<RegisterController>(
                init: RegisterController(),
                builder: (_) {
                  return TextField(
                    decoration: inputDecoration(
                      label: Strings.bankAccountNumber.get(),
                      errorText: _.formErrors2['bankAccountNumberErrorMessage'],
                      prefixIcon: Icons.credit_card,
                    ),
                    onChanged: registerController.changeBankAccountNumber,
                    keyboardType: TextInputType.number,
                    onTap: () {
                      _.removeBankAccountNumErrMsg();
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.hdp,
              ),
              GetBuilder<RegisterController>(
                init: RegisterController(),
                builder: (_) {
                  return DropdownMenu(
                    items: const [
                      "اختيار المحافظة",
                      "صنعاء",
                      "عدن",
                      "ذمار",
                    ],
                    selectedItem: _.region,
                    handleChange: _.changeRegion,
                  );
                },
              ),
              SizedBox(
                height: 20.hdp,
              ),
              GetBuilder<RegisterController>(
                init: RegisterController(),
                builder: (_) {
                  return TextField(
                    decoration: inputDecoration(
                      label: Strings.address.get(),
                      prefixIcon: Icons.place,
                      errorText: _.formErrors2['address'],
                    ),
                    onChanged: _.changeAddress,
                    onTap: () {
                      _.removeAddressErrorMessages();
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.hdp,
              ),
              Align(
                alignment: Alignment.topRight,
                child: Text(Strings.selectLocation.get(),
                    style: R.fonts.inputForm),
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
              const SmallDivider(),
              SizedBox(
                height: 10.hdp,
              ),
              PrimaryButton(
                text: Strings.signIn.get(),
                onPressed: () async {
                  // page loader
                  registerController.validateSecondScreenInputs();
                  if (registerController
                      .formValid(registerController.formErrors2)) {
                    EasyLoading.show(status: Strings.pleaseWait.get());
                    await Api.loginWithPhone(
                        phoneNumber: registerController.ownerPhoneNumber!,
                        handleFailed: _handleFailure,
                        onCodeSent: (verfID) {
                          loginController.changeVerfID(verfID);
                          Get.to(() => LoginSecondScreen(
                                loginFromRegister: true,
                              ));
                        });
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _handleFailure() {
    EasyLoading.dismiss();
    Get.snackbar(
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
}
