import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';

BoxDecoration kHeaderDecoration = BoxDecoration(
  borderRadius: BorderRadius.circular(100),
  gradient: const LinearGradient(
    colors: [
      Colors.transparent,
      CustomColor.bgLight1,
    ],
  ),
);
