import 'package:advert/components/custom_text_field.dart';
import 'package:advert/constants/app_size.dart';
import 'package:advert/services/date_time_services.dart';

import 'package:flutter/material.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Center(child: Text("AddProduct")),
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.purple, Colors.pink],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight),
            ),
          ),
          Padding(
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
                CustomTextField(
                  prefixIcon: Center(
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.photo_camera),
                    ),
                  ),
                  controller: _description,
                  maxLines: 8,
                ),
                AppSizes.height10,
                CustomTextField(
                  hintext: 'name',
                  controller: _name,
                ),
                AppSizes.height10,
                CustomTextField(
                    hintext: 'dateTime',
                    controller: _dateTime,
                    onTap: () async {
                      await DateTimeService.showDateTimePicker(context,
                          (value) {
                        _dateTime.text = value.toString();
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
        ],
      ),
    );
  }
}
