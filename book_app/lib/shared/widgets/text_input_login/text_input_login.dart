import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class TextInputLogin extends StatelessWidget {
  final bool isRequired;
  final Widget? suffixIcon;
  final int maxLines;
  final String hint;
  final TextInputType inputType;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputAction textInputAction;
  final bool readOnly;
  final VoidCallback? onTap;
  final Function(String value)? onChanged;
  final FormFieldValidator<String>? validator;
  final String? value;
  TextInputLogin({
    Key? key,
    this.isRequired = true,
    this.suffixIcon,
    this.maxLines = 1,
    required this.hint,
    this.inputType = TextInputType.text,
    required this.obscureText,
    this.textInputAction = TextInputAction.next,
    this.onChanged,
    this.onTap,
    this.readOnly = false,
    this.validator,
    this.value,
    this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: value);
    return Container(
    
      decoration: isRequired
          ? null
          : BoxDecoration(
              
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  AppColor.color45C152.withOpacity(0.1),
                  AppColor.color0ADC90.withOpacity(0.1),
                ],
              ),
            ),
      child: TextFormField(
        
        maxLines: maxLines,
        readOnly: readOnly,
        controller: controller,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onTap: onTap,
        onChanged: onChanged,
        keyboardType: inputType,
        obscureText: obscureText,
        textInputAction: textInputAction,
        validator: validator,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          
          suffixIcon: suffixIcon,
          border: OutlineInputBorder(
              borderSide:
                  BorderSide(color: AppColor.primaryHintColorLight, width: 1),
              borderRadius: const BorderRadius.all(Radius.circular(8))),
          hintText: hint,
          floatingLabelBehavior: FloatingLabelBehavior.always,
        ),
      ),
    );
  }
}
