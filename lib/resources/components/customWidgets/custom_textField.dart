import 'package:flutter/material.dart';
import 'package:music_player/constants/colors.dart';

class CustomTextfield extends StatelessWidget {
  final String? labelName;
  const CustomTextfield({super.key, this.labelName});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35,
      child: TextField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(0),
          prefixIcon: const Icon(
            Icons.search,
            color: greyColor,
            size: 15,
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
      ),
    );
  }
}
