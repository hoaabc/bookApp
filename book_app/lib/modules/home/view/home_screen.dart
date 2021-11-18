import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/bottom_navigation/view/bottom_navigation_screen.dart';
import '../../../shared/widgets/reading_card_list/reading_card_list.dart';
import '../controller/home_controller.dart';

part 'home_screen.childern.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BottomNavigationCustom(
        // ignore: sort_child_properties_last
        child: Scrollbar(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: Get.width,
                height: Get.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: <Widget>[
                          ReadingListCard(
                            image: ImageConstants.book_demo,
                            title: 'Crushing & Influence',
                            auth: 'Gary Venchuk',
                            rating: 4.9,
                            pressDetails: () {},
                          ),
                          ReadingListCard(
                            image: ImageConstants.book_demo,
                            title: 'Top Ten Business Hacks',
                            auth: 'Herman Joel',
                            rating: 4.8,
                            pressDetails: () {},
                          ),
                          const SizedBox(width: 30),
                        ],
                      ),
                    ),
                    // bestOfTheDayCard(),

                    // Container(
                    //   height: 80,
                    //   width: double.infinity,
                    //   decoration: BoxDecoration(
                    //     color: Colors.white,
                    //     borderRadius: BorderRadius.circular(38.5),
                    //     boxShadow: [
                    //       BoxShadow(
                    //         offset: const Offset(0, 10),
                    //         blurRadius: 33,
                    //         color: const Color(0xFFD3D3D3).withOpacity(.84),
                    //       ),
                    //     ],
                    //   ),
                    //   child: ClipRRect(
                    //     borderRadius: BorderRadius.circular(38.5),
                    //     child: Column(
                    //       crossAxisAlignment: CrossAxisAlignment.start,
                    //       children: <Widget>[
                    //         Expanded(
                    //           child: Padding(
                    //             padding:
                    //                 const EdgeInsets.only(left: 30, right: 20),
                    //             child: Row(
                    //               children: <Widget>[
                    //                 Expanded(
                    //                   child: Column(
                    //                     mainAxisAlignment:
                    //                         MainAxisAlignment.end,
                    //                     crossAxisAlignment:
                    //                         CrossAxisAlignment.start,
                    //                     children: <Widget>[
                    //                       Text(
                    //                         'Crushing & Influence',
                    //                         style: TextStyle(
                    //                           fontWeight: FontWeight.bold,
                    //                         ),
                    //                       ),
                    //                       Text(
                    //                         'Gary Venchuk',
                    //                         style: TextStyle(
                    //                           color:
                    //                               AppColor.kLightBlackColor,
                    //                         ),
                    //                       ),
                    //                       Align(
                    //                         alignment:
                    //                             Alignment.bottomRight,
                    //                         child: Text(
                    //                           'Chapter 7 of 10',
                    //                           style: TextStyle(
                    //                             fontSize: 10,
                    //                             color: AppColor
                    //                                 .kLightBlackColor,
                    //                           ),
                    //                         ),
                    //                       ),
                    //                       const SizedBox(height: 5),
                    //                     ],
                    //                   ),
                    //                 ),
                    //                 FCoreImage(
                    //                   ImageConstants.book_demo,
                    //                   width: 55,
                    //                 )
                    //               ],
                    //             ),
                    //           ),
                    //         ),
                    //         Container(
                    //           height: 7,
                    //           width: Get.width * .65,
                    //           decoration: BoxDecoration(
                    //             color: AppColor.kProgressIndicator,
                    //             borderRadius: BorderRadius.circular(7),
                    //           ),
                    //         ),
                    //       ],
                    //     ),
                    //   ),
                    // ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          )),
        ),
        indexSelect: 0,
      ),
    );
  }
}
//  const SizedBox(height: 16),
//                 CarouselWidget(
//                   aspectRatio: 1.75,
//                   showIndicator: true,
//                   borderRadius: 8,
//                   items: controller.getListSliderImage(),
//                 ),
//                 const SizedBox(height: 16),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Text('Truyện HOT',
//                       style: TextAppStyle().textTitleContactStyle()),
//                 ),
//                 const SizedBox(height: 16),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: TypeHistory(lstItems: controller.getListHistory()),
//                 ),
//                 const SizedBox(height: 32),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Text('Truyện ngôn tình',
//                       style: TextAppStyle().textTitleContactStyle()),
//                 ),
//                 const SizedBox(height: 16),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: TypeHistory(lstItems: controller.getListHistory()),
//                 ),
//                 const SizedBox(height: 32),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Text('Truyện tiên hiệp',
//                       style: TextAppStyle().textTitleContactStyle()),
//                 ),
//                 const SizedBox(height: 16),
//                 TypeHistory(lstItems: controller.getListHistory(), type: false),
//                 const SizedBox(height: 32),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 16),
//                   child: Text('Truyện tranh',
//                       style: TextAppStyle().textTitleContactStyle()),
//                 ),
//                 const SizedBox(height: 16),
//                 TypeHistory(lstItems: controller.getListHistory(), type: false),
//                 const SizedBox(height: 32),