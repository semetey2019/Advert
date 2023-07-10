import 'dart:io';

import 'package:advert/components/custom_text_field.dart';
import 'package:advert/constants/app_size.dart';
import 'package:advert/services/date_time_services.dart';
import 'package:advert/services/image_picker_services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:intl/intl.dart';

// ignore: must_be_immutable
class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  final _title = TextEditingController();
  final _description = TextEditingController();
  final _name = TextEditingController();
  final _dateTime = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _adress = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        centerTitle: true,
        title: const Text("AddProduct"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ListView(
          children: [
            CustomTextField(
              hintext: 'title',
              controller: _title,
            ),
            AppSizes.height10,
            CustomTextField(
              hintext: 'description',
              controller: _description,
              maxLines: 8,
            ),
            AppSizes.height10,
            ImageContainer(),
            AppSizes.height10,
            CustomTextField(
              hintext: 'name',
              controller: _name,
            ),
            AppSizes.height10,
            CustomTextField(
                hintext: 'dateTime',
                controller: _dateTime,
                focusNode: FocusNode(),
                onTap: () async {
                  await DateTimeService.showDateTimePicker(context, (value) {
                    _dateTime.text = DateFormat('d MMMM y ')
                        .format(DateTime.parse(value.toString()));
                  });
                }),
            AppSizes.height10,
            CustomTextField(
              hintext: 'phoneNumber',
              controller: _phoneNumber,
            ),
            AppSizes.height10,
            CustomTextField(
              hintext: 'adress',
              controller: _adress,
            ),
          ],
        ),
      ),
    );
  }
}

class ImageContainer extends StatefulWidget {
  ImageContainer({super.key});

  @override
  State<ImageContainer> createState() => _ImageConteinerState();
}

class _ImageConteinerState extends State<ImageContainer> {
  List<XFile> images = [];

  final service = ImagePickerService();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 300,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            colors: [Colors.blue, Colors.purple, Colors.pink],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: images.isNotEmpty
          ? GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
              ),
              children: images
                  .map(
                    (e) => ItemCard(
                      file: File(e.path),
                    ),
                  )
                  .toList(),
            )
          : IconButton(
              onPressed: () async {
                final value = await service.pickImages();
                if (value != null) {
                  images = value;
                  setState(() {});
                }
              },
              icon: const Icon(
                Icons.photo_camera,
                size: 50,
                color: Colors.black,
              ),
            ),
    );
  }
}

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.file});
  final File file;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 140,
      child: Image.file(file),
    );
  }
}
