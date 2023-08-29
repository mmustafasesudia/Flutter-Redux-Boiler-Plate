import 'package:boilerplate/common/widget/text_view.dart';
import 'package:flutter/material.dart';

import '../../../theme/my_colors.dart';
import '../../../theme/text_styling.dart';

class MyElevatedButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Widget? prefixIcon, suffixIcon;
  final Color? buttonBGColor, disabledTextColor, textColor;
  final double height;

  const MyElevatedButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.buttonBGColor,
    this.height = 52,
    this.disabledTextColor,
    this.textColor,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: MediaQuery.of(context).size.width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            onPressed != null ? MyColors.primaryBlue : null,
          ),
          shadowColor: MaterialStateProperty.all(Colors.transparent),
        ),
        child: FittedBox(
          child: Row(
            children: [
              prefixIcon ?? const SizedBox(),
              const SizedBox(width: 10),
              TextView(text,
                  textAlign: TextAlign.center,
                  maxLine: 1,
                  style: TextStyleCustom.font_18SemiBold
                      ?.copyWith(color: textColor ?? MyColors.white)),
              const SizedBox(width: 10),
              suffixIcon ?? const SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
