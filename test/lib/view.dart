import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

onImageButtonPressed(ImageSource source,
    {required BuildContext context, capturedImageFile}) async {
  final ImagePicker _picker = ImagePicker();
  File val;

  final pickedFile = await _picker.getImage(
    source: source,
  );

  val = (await ImageCropper().cropImage(
    sourcePath: pickedFile!.path,
    aspectRatio: CropAspectRatio(ratioX: 1, ratioY: 1),
    compressQuality: 100,
    maxHeight: 700,
    maxWidth: 700,
    compressFormat: ImageCompressFormat.jpg,
  )) as File;
  print("cropper ${val.runtimeType}");
  capturedImageFile(val.path);

}

typedef capturedImageFile = String Function(String);
typedef void OnPickImageCallback(
    double maxWidth, double maxHeight, int quality);