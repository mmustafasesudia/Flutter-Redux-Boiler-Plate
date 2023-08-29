import 'package:flutter/material.dart';
import 'package:boilerplate/common/widget/text_view.dart';

import '../../../theme/my_colors.dart';
import '../../../theme/text_styling.dart';

class MyOutlineLoaderButton extends StatelessWidget {
  final bool loader;
  final VoidCallback? onPressed;
  final String text;
  final Widget? prefixIcon, suffixIcon;
  final Color?  disabledTextColor, textColor;
  final double height, loaderWidth;

  const MyOutlineLoaderButton({
    Key? key,
    required this.text,
    required this.loader,
    this.onPressed,
    this.height = 52,
    this.loaderWidth = 52,
    this.disabledTextColor,
    this.textColor,
    this.prefixIcon,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: MyColors.transparent,
          borderRadius: BorderRadius.circular(loader ? 30 : 6),
          border: Border.all(
            color: onPressed != null
                ? MyColors.black
                : MyColors.lightGrey2,
          ),
        ),
        duration: const Duration(milliseconds: 500),
        height: height,
        width: loader ? loaderWidth : MediaQuery.of(context).size.width,
        child: loader
            ? Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      textColor ?? MyColors.white,
                    ),
                  ),
                ),
              )
            : OutlinedButton(
                onPressed: onPressed,
                style: ButtonStyle(
                  shadowColor:
                      MaterialStateProperty.all(Colors.transparent),
                ),
                child: FittedBox(
                  child: Row(
                    children: [
                      prefixIcon ?? const SizedBox(),
                      const SizedBox(width: 10),
                      TextView(loader ? "" : text,
                          textAlign: TextAlign.center,
                          maxLine: 1,
                          style: TextStyleCustom.font_18SemiBold?.copyWith(
                              color: textColor ?? MyColors.black)),
                      const SizedBox(width: 10),
                      suffixIcon ?? const SizedBox(),
                    ],
                  ),
                ),
              ),
      ),
    );
  }
}
