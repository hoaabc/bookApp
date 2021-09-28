import 'package:book_app/shared/widgets/image_widget/fcore_image.dart';
import 'package:flutter/material.dart';

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
      onTap: ()=>onPress(),
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: 10),
        padding: EdgeInsets.all(12),
        height: 40,
        width: 40,
        decoration: BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: FCoreImage(icon),
      ),
    );
  }
}