import 'package:book_app/modules/detail/controller/detail_controller.dart';
import 'package:book_app/shared/widgets/appbar/app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:hexcolor/hexcolor.dart';

class DetailScreen extends GetView<DetailController> {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: 'Detail'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.asset(
                      "lib/resource/assets_resources/images/slider_image.jpeg",
                      width: 130,
                      height: 180,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 180,
                      child: Column(
                        textDirection: TextDirection.ltr,
                        verticalDirection: VerticalDirection.down,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 16, vertical: 5),
                            child: Text(
                              "Nương tử nhà tướng quân",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 5),
                            child: Text(
                              "Sơn tùng MTP",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: HexColor('#8E8585'),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 5),
                            child: Container(
                              // height: 30,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: HexColor('#8E8585'),
                                  borderRadius: BorderRadius.circular(7)),
                              // height: 150,
                              child: const Text(
                                "Ngôn tình",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  // backgroundColor: HexColor('#8E8585'),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 5),
                            child: Row(
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.remove_red_eye,
                                      color: Colors.green,
                                    ),
                                    Text(
                                      "12.40" + "K",
                                      style: TextStyle(color: Colors.black),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                      ),
                                      Text(
                                        "12.40" + "K",
                                        style: TextStyle(color: Colors.black),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
