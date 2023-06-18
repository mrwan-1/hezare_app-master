import 'package:get/get.dart';
import 'package:hezare_app/core/util/utils_functions.dart';
import 'package:intl/intl.dart';

final val = NumberFormat("#,##0", "en_US");

class HallController extends GetxController {
  String? hallName;
  // UploadImageData? videoData;
  List<UploadImageData>? imageData;
  Map price = {"from": "", "to": ""};
  String? deposit;
  String? hallCapacity;
  Map hallSpecialty = {'رجال': true, 'نساء': false, 'حفلات تخرج': false};
  bool kosha = true;
  String? address;
  String? moreDetails;

  changeImageData(List<UploadImageData>? imgdata) {
    imageData = imgdata;
    update();
  }

  changeHallName(String value) => hallName = value;
  changeAddress(String value) => address = value;
  changeMoreDetails(String value) => moreDetails = value;
  changeKosha(bool value) {
    kosha = value;
    update();
  }

  showHallSpeciality() {
    String str = '';

    hallSpecialty.forEach((key, value) {
      if (value == true) str += '$key,  ';
    });
    return str;
  }

  showKosha() => kosha ? "مع كوشة" : "بدون كوشة";

  changeHallSpeciality(String key, bool value) {
    hallSpecialty[key] = value;
    update();
  }

  changeHallCapacity(String value) {
    hallCapacity = value;
    update();
  }

  changeFromPrice(String value) => price["from"] = val.format(int.parse(value));
  changeToPrice(String value) => price["to"] = val.format(int.parse(value));
  changeDeposit(String value) => deposit = value;

  onSubmit() {
    print(
        "$hallName, $address, $moreDetails, $kosha, $hallSpecialty, $hallCapacity, $price, $deposit, $imageData");
  }
}
