import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';

import '../../../shared/bottom_navigation/view/bottom_navigation_screen.dart';
import '../../../shared/widgets/appbar/app_bar_widget.dart';
import '../controller/detail_controller.dart';

class DetailScreen extends GetView<DetailController> {
   DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar(context, title: 'Detail'),
        body: BottomNavigationCustom(
          child: SizedBox(),
          indexSelect: 1,
        
          //onChange: (index) {},
        ));
  }
}
