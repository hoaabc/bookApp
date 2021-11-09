import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;

import 'button.dart';

// ignore: must_be_immutable
class GButton extends StatefulWidget {
  final bool? active;
  final bool? debug;
  final bool? haptic;
  final double? gap;
  final Color? iconColor;
  final Color? rippleColor;
  final Color? hoverColor;
  final Color? iconActiveColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final TextStyle? textStyle;
  final double? iconSize;
  final Function? onPressed;
  final String text;
  final IconData icon;
  final Color? backgroundColor;
  final Duration? duration;
  final Curve? curve;
  final Gradient? backgroundGradient;
  final Widget? leading;
  final BorderRadius? borderRadius;
  final Border? border;
  final Border? activeBorder;
  final List<BoxShadow>? shadow;
  final String? semanticLabel;
  final String? imageIconActive;
  final String? imageIconDisable;

  bool? main;

  GButton(
      {Key? key,
      this.active,
      this.haptic,
      this.backgroundColor,
      required this.icon,
      this.iconColor,
      this.rippleColor,
      this.hoverColor,
      this.iconActiveColor,
      this.text = '',
      this.textColor,
      this.padding,
      this.margin,
      this.duration,
      this.debug,
      this.gap,
      this.curve,
      this.textStyle,
      this.iconSize,
      this.leading,
      this.onPressed,
      this.backgroundGradient,
      this.borderRadius,
      this.border,
      this.activeBorder,
      this.shadow,
      this.semanticLabel,
      this.main,
      this.imageIconActive,
      this.imageIconDisable})
      : super(key: key);

  @override
  _GButtonState createState() => _GButtonState();
}

class _GButtonState extends State<GButton> {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: widget.semanticLabel ?? widget.text,
      child: Button(
        borderRadius: widget.borderRadius,
        border: widget.border,
        activeBorder: widget.activeBorder,
        shadow: widget.shadow,
        debug: widget.debug,
        duration: widget.duration,
        iconSize: widget.iconSize,
        active: widget.active,
        onPressed: () {
          if (widget.haptic!) HapticFeedback.selectionClick();
          widget.onPressed!();
        },
        padding: widget.padding,
        margin: widget.margin,
        gap: widget.gap,
        color: widget.backgroundColor,
        rippleColor: widget.rippleColor,
        hoverColor: widget.hoverColor,
        gradient: widget.backgroundGradient,
        curve: widget.curve,
        leading: widget.leading,
        iconActiveColor: widget.iconActiveColor,
        iconColor: widget.iconColor,
        icon: widget.icon,
        main: widget.main,
        textTitle: widget.text,
        imageIconActive: widget.imageIconActive,
        imageIconDisable: widget.imageIconDisable,
        text: Text(
          widget.text,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              // mau chu
              color: widget.active == true ? Colors.amber : Colors.grey,
              fontSize: 10),
        ),
      ),
    );
  }
}
