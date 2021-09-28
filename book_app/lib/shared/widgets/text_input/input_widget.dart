import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InputWidget extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool obscureText;
  const InputWidget({
    Key? key,
    required this.hintText,
    required this.obscureText,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(
                color: Color.fromRGBO(90, 168, 2000, 200),
                blurRadius: 20,
                offset: Offset(0, 1))
          ]),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: TextField(
          textAlignVertical: TextAlignVertical.center,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: const Icon(Icons.done),
              hintText: hintText,
              hintStyle: const TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              )),
        ),
      ),
    );
  }
}
