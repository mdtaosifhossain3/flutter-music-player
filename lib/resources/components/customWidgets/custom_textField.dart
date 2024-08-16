import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  final String? labelName;
  const CustomTextfield({super.key, this.labelName});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 20),
        prefixIcon: const Icon(
          Icons.search,
          color: greyColor,
        ),
        hintText: labelName,
        hintStyle: const TextStyle(
            fontSize: 13.00, color: greyColor, fontWeight: FontWeight.normal),
        filled: true,
        fillColor: searchBarColor,
        enabledBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
        focusedBorder:
            OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      ),
    );
  }
}
