import 'package:flutter/material.dart';

import '../image_widget/fcore_image.dart';

class SocalCard extends StatelessWidget {
  const SocalCard({
    Key? key,
    required this.icon,
    required this.onPress,
  }) : super(key: key);

  final String icon;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child:  Container(
        margin:
           const EdgeInsets.symmetric(horizontal: 10),
        padding:const EdgeInsets.all(12),
        height: 40,
        width: 40,
        decoration:const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: FCoreImage(icon),
      ),
    );
  }
}