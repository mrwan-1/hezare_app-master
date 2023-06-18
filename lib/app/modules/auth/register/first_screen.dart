part of './register.dart';

class FirstScreen extends GetView {
  final registerController = Get.put(RegisterController());
  FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Strings.createNewAccount.get()),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(25.wdp),
          child: Column(
            children: [
              InkWell(
                onTap: () async {
                  UploadImageData? data = await uploadImage('gallery');
                  registerController.uploadImageData(data);
                  if (data != null) {
                    registerController.changeImageErrorMessage(null);
                    registerController.changeImageSucessMessage(
                        Strings.imageUploadedSuccessfully.get());
                  }
                },
                child: const UploadImage(),
              ),
              GetBuilder<RegisterController>(
                init: RegisterController(),
                builder: (_) {
                  return Column(
                    children: [
                      if (_.formErrors['imageErrorMessage'] != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            _.formErrors['imageErrorMessage']!,
                            style: R.fonts.formErrorMessage,
                          ),
                        ),
                      if (_.imageErrorMessage != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            _.imageSucessMessage!,
                            style: R.fonts.caption,
                          ),
                        )
                    ],
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
                      label: Strings.ownerName.get(),
                      errorText: _.formErrors['ownerNameErrorMessage'],
                      prefixIcon: Icons.person,
                      // errorText:
                    ),
                    keyboardType: TextInputType.name,
                    onChanged: _.changeOwnerName,
                    onTap: () {
                      _.removeOwnerNameErrorMessage();
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
                  return TextField(
                    decoration: inputDecoration(
                      label: Strings.businessName.get(),
                      errorText: _.formErrors['serviceNameErrorMessage'],
                      prefixIcon: Icons.store,
                    ),
                    keyboardType: TextInputType.name,
                    onChanged: _.changeServiceName,
                    onTap: () {
                      _.removeServiceNameErrorMessage();
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.hdp,
              ),
              PhoneNumberLabel(text: Strings.ownerPhoneNumber.get()),
              GetBuilder<RegisterController>(
                init: RegisterController(),
                builder: (_) {
                  return PhoneNumberInput(
                    onPhoneChanged: _.changeOwnerPhoneNumber,
                    errorMessage: _.formErrors['ownerPhoneErrorMessage'],
                    removeErrorMessages: () {
                      _.removeOwnerPhoneErrorMessage();
                    },
                  );
                },
              ),
              SizedBox(
                height: 20.hdp,
              ),
              PhoneNumberLabel(text: Strings.servicePhoneNumber.get()),
              GetBuilder<RegisterController>(
                init: RegisterController(),
                builder: (_) {
                  return PhoneNumberInput(
                    onPhoneChanged: _.changeServicePhoneNumber,
                    errorMessage: _.formErrors['servicePhoneErrorMessage'],
                    removeErrorMessages: () {
                      _.removeServicePhoneErrorMessage();
                    },
                  );
                },
              ),
              const SmallDivider(),
              SizedBox(
                height: 10.hdp,
              ),
              PrimaryButton(
                  text: Strings.next.get(),
                  onPressed: () {
                    registerController.validateFirstScreenInputs();
                    if (registerController
                        .formValid(registerController.formErrors)) {
                      Get.to(() => SecondScreen());
                    }
                    // Get.to(() => SecondScreen());
                  }),
            ],
          ),
        ),
      ),
      backgroundColor: R.colors.body,
    );
  }
}
