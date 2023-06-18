import 'dart:io';
import 'dart:ui';
import 'package:image_picker/image_picker.dart';

import 'package:path/path.dart' as path;

Color hexToColor(String code) {
  return Color(int.parse(code.substring(1, 7), radix: 16) + 0xFF000000);
}

Future<UploadImageData?> uploadImage(String inputSource) async {
  final picker = ImagePicker();
  XFile? pickedImage;
  try {
    pickedImage = await picker.pickImage(
        source:
            inputSource == 'camera' ? ImageSource.camera : ImageSource.gallery,
        maxWidth: 1920);

    if (pickedImage != null) {
      final String fileName = path.basename(pickedImage.path);
      File imageFile = File(pickedImage.path);

      return UploadImageData(fileName: fileName, imageFile: imageFile);
    }
  } catch (err) {
    print(err);
  }
}

Future<UploadImageData?> uploadVideo() async {
  final picker = ImagePicker();
  XFile? pickedImage;
  try {
    pickedImage = await picker.pickVideo(
      source: ImageSource.gallery,
    );

    if (pickedImage != null) {
      final String fileName = path.basename(pickedImage.path);
      File imageFile = File(pickedImage.path);

      return UploadImageData(fileName: fileName, imageFile: imageFile);
    }
  } catch (err) {
    print(err);
  }
}

Future<List<UploadImageData>?> uploadImageMulti() async {
  final picker = ImagePicker();
  List<XFile>? pickedImages;
  try {
    pickedImages = await picker.pickMultiImage(maxWidth: 1920);

    if (pickedImages != null) {
      List<UploadImageData> images = pickedImages.map((pickedImage) {
        final String fileName = path.basename(pickedImage.path);
        File imageFile = File(pickedImage.path);
        return UploadImageData(fileName: fileName, imageFile: imageFile);
      }).toList();
      return images;
    }
  } catch (err) {
    print(err);
  }
}

class UploadImageData {
  String? fileName;
  File? imageFile;

  UploadImageData({this.fileName, this.imageFile});
}
