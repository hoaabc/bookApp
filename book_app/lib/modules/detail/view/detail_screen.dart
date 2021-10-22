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
            DefaultTabController(
              length: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16),
                    child: TabBar(
                        unselectedLabelColor: HexColor('#706A6A'),
                        labelColor: HexColor('#0482F8'),
                        tabs: [
                          Tab(
                            child: Text(
                              "Chi tiết",
                            ),
                          ),
                          Tab(
                            child: Text(
                              "Chapter",
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    //Add this to give height
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Đang cập nhật",
                                style: TextStyle(
                                    color: HexColor('#0482F8'), fontSize: 17),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                  Text(
                                    "5.0",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  )
                                ],
                              )
                            ],
                          ),
                          Text(
                            'Nếu được trùng sinh lại một lần nữa về thời điểm chưa từng xảy ra, ta sẽ làm gì? \n'
                            'Không nhu nhược nữa \n'
                            'Không cả tin nữa\n'
                            'Không nhân nhượng nữa',
                            style: TextStyle(
                              color: HexColor("#6D6C6C"),
                              height: 1.5,
                            ),
                          ),
                          Divider(
                            height: 20,
                            thickness: 10,
                            color: HexColor('#C4C4C4'),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bình luận nổi bật',
                                style: TextStyle(
                                    color: HexColor('#4E4848'),
                                    fontSize: 17,
                                    height: 2),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image.asset(
                                        "lib/resource/assets_resources/images/slider_image.jpeg",
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SizedBox(
                                          height: 80,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Sơn Tùng MTP',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    height: 2,
                                                    fontSize: 17),
                                              ),
                                              Text(
                                                'Hay quá ạ ',
                                                style: TextStyle(
                                                    color: HexColor('#A5A0A0'),
                                                    fontSize: 15),
                                              ),
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(50.0),
                                      child: Image.asset(
                                        "lib/resource/assets_resources/images/slider_image.jpeg",
                                        width: 80,
                                        height: 80,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: SizedBox(
                                          height: 80,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Ronaldo',
                                                style: TextStyle(
                                                    color: Colors.black,
                                                    fontWeight: FontWeight.bold,
                                                    height: 2,
                                                    fontSize: 17),
                                              ),
                                              Flexible(
                                                child: Text(
                                                  'Hay quá ạ Hay quá ạ ',
                                                  style: TextStyle(
                                                      color:
                                                          HexColor('#A5A0A0'),
                                                      fontSize: 15),
                                                ),
                                              ),
                                            ],
                                          )),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Container(
                        child: Text("Articles Body"),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
