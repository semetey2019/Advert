import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    this.hintext,
    this.controller,
    this.maxLines,
    this.onTap,
    this.prefixIcon,
  });

  final String? hintext;
  final TextEditingController? controller;
  final int? maxLines;
  final void Function()? onTap;
  final Widget? prefixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      onTap: onTap,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        border: const OutlineInputBorder(),
        filled: true,
        hintText: hintext,
      ),
    );
  }
}
