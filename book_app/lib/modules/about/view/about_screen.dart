import 'package:book_app/modules/about/controller/about_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class AboutLoginScreen extends GetView<AboutController> {
  const AboutLoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          margin: EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
              child: Column(
            children: [
                Text('About', style: TextStyle(color: Colors.black))
            ],
          ))),
    );
  }
}
