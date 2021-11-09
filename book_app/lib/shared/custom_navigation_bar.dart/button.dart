import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Button extends StatefulWidget {
  Button(
      {Key? key,
      this.icon,
      this.iconSize,
      this.leading,
      this.iconActiveColor,
      this.iconColor,
      this.text,
      this.gap,
      this.color,
      this.rippleColor,
      this.hoverColor,
      required this.onPressed,
      this.duration,
      this.curve,
      this.padding,
      this.margin,
      required this.active,
      this.debug,
      this.gradient,
      this.borderRadius,
      this.border,
      this.activeBorder,
      this.shadow,
      this.main,
      this.textTitle,
      this.imageIconActive,
      this.imageIconDisable})
      : super(key: key);

  final IconData? icon;
  final double? iconSize;
  final Text? text;
  final Widget? leading;
  final Color? iconActiveColor;
  final Color? iconColor;
  final Color? color;
  final Color? rippleColor;
  final Color? hoverColor;
  final double? gap;
  final bool? active;
  final bool? debug;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Duration? duration;
  final Curve? curve;
  final Gradient? gradient;
  final BorderRadius? borderRadius;
  final Border? border;
  final Border? activeBorder;
  final List<BoxShadow>? shadow;
  String? imageIconActive;
  String? imageIconDisable;
  bool? main;
  String? textTitle;
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> with TickerProviderStateMixin {
  late bool _expanded;
  late final AnimationController expandController;

  @override
  void initState() {
    super.initState();
    _expanded = widget.active!;

    expandController =
        AnimationController(vsync: this, duration: widget.duration)
          ..addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    expandController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var _colorTween =
        ColorTween(begin: widget.iconColor, end: widget.iconActiveColor);
    var _colorTweenAnimation = _colorTween.animate(CurvedAnimation(
        parent: expandController,
        curve: _expanded ? Curves.easeInExpo : Curves.easeOutCirc));

    _expanded = !widget.active!;
    if (_expanded)
      expandController.reverse();
    else
      expandController.forward();

    Widget icon = widget.leading ??
        Icon(widget.icon,
            color: _colorTweenAnimation.value, size: widget.iconSize);

    return Material(
      type: MaterialType.transparency,
      child: Container(
        height: 66,
        margin: widget.main == true
            ? EdgeInsets.only(bottom: 15)
            : EdgeInsets.all(0),
        child: Column(
          children: [
            InkWell(
              borderRadius: widget.borderRadius,
              onTap: widget.onPressed,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    padding: widget.margin,
                    child: AnimatedContainer(
                      curve: Curves.easeOut,
                      padding: widget.padding,
                      duration: widget.duration!,
                      decoration: BoxDecoration(
                        boxShadow: widget.shadow,
                        gradient: widget.gradient,
                        color:
                            widget.active == true ? widget.color : Colors.white,
                        borderRadius: widget.borderRadius,
                      ),
                      child: FittedBox(
                        fit: BoxFit.fitHeight,
                        child: Stack(alignment: Alignment.center, children: [
                          Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Opacity(
                                  opacity: 0,
                                  child: widget.imageIconActive != null
                                      ? Container(
                                          child: Image.asset(
                                            widget.active == true
                                                ? widget.imageIconActive!
                                                : widget.imageIconDisable!,
                                            width: 30,
                                            height: 30,
                                          ),
                                        )
                                      : icon,
                                ),
                              ]),
                          Container(
                            padding: widget.main == true
                                ? const EdgeInsets.only(
                                    left: 20, right: 20, top: 10, bottom: 10)
                                : const EdgeInsets.all(5.0),
                            child: Align(
                                alignment: Alignment.center,
                                child: Column(
                                  children: [
                                    widget.imageIconActive != null
                                        ? Container(
                                            padding: const EdgeInsets.all(3),
                                            child: Image.asset(
                                              widget.active == true
                                                  ? widget.imageIconActive!
                                                  : widget.imageIconDisable!,
                                              width: 18,
                                              height: 18,
                                            ),
                                          )
                                        : icon,
                                    widget.main == true
                                        ? Container(
                                            margin:
                                                const EdgeInsets.only(top: 5),
                                            child: Text(
                                              widget.textTitle!,
                                              style: TextStyle(
                                                color: widget.active == true
                                                    ? widget.color
                                                    : Colors.white,
                                              ),
                                            ),
                                          )
                                        : const SizedBox()
                                  ],
                                )),
                          ),
                        ]),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            widget.main == true
                ? const SizedBox()
                : Container(
                    margin: const EdgeInsets.only(top: 5), child: widget.text),
          ],
        ),
      ),
    );
  }
}
