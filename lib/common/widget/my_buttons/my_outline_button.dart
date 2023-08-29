import 'package:flutter/material.dart';
import 'package:boilerplate/common/widget/text_view.dart';

import '../../../theme/my_colors.dart';
import '../../../theme/text_styling.dart';

class MyOutlineButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String text;
  final Widget? prefixIcon, suffixIcon;
  final Color? buttonBGColor, disabledTextColor, textColor;
  final double height;

  const MyOutlineButton({
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
      child: OutlinedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(
            textColor?.withOpacity(0.05) ?? MyColors.black.withOpacity(0.05),
          ),
          side: MaterialStateProperty.all(
            BorderSide(
              width: 1,
              color: onPressed != null
                  ? textColor ?? MyColors.black
                  : MyColors.lightGrey2,
            ),
          ),
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
