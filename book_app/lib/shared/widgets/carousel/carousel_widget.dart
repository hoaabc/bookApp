import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../image_widget/fcore_image.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({
    required this.items,
    Key? key,
    this.aspectRatio = 2.0,
    this.showLabel = false,
    this.onTapItem,
    this.leading,
    this.borderRadius,
    this.decoration,
    this.showIndicator = true,
  }) : super(key: key);
  final double aspectRatio;
  final List<String> items;
  final Function(int index)? onTapItem;
  final Widget? leading;
  final bool showLabel;
  final double? borderRadius;
  final BoxDecoration? decoration;
  final bool showIndicator;

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  double currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (widget.items.isNotEmpty)
            ? CarouselSlider(
                items: List.generate(
                  widget.items.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: widget.decoration,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(widget.borderRadius!),
                          child: FCoreImage(
                            widget.items[index],
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                options: CarouselOptions(
                  
                  aspectRatio: widget.aspectRatio,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index.toDouble();
                    });
                  },
                ),
              )
            : promotionsEmptyState,
        if (widget.showIndicator)
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: DotsIndicator(
              dotsCount: widget.items.length,
              position: currentIndex,
              decorator: DotsDecorator(
                color: const Color(0xff333333).withOpacity(0.2),
                activeColor: const Color(0xffFF6B00),
                size: const Size.square(6),
                activeSize: const Size.square(6),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5)),
              ),
            ),
          )
      ],
    );
  }

  Widget promotionsEmptyState = const Text('Empty');
}
