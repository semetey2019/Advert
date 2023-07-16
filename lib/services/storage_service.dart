import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';

class StorageService {
  final storageRef = FirebaseStorage.instance.ref();
  Future<List<String>?> uploadImages(List<XFile> images) async {
    if (images.isNotEmpty) {
      List<String> urls = [];
      for (var image in images) {
        final mountainsRef =
            storageRef.child("images/${DateTime.now().day}/${image.name}");
        try {
          final file = File(image.path);
          final uploadTask = await mountainsRef.putFile(file);
          final url = await uploadTask.ref.getDownloadURL();
          urls.add(url);
        } catch (error) {
          print(error.toString());
        }
      }
      return urls;
    } else {
      return null;
    }
  }
}
