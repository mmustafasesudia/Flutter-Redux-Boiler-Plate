import 'package:flutter/material.dart';
import 'package:boilerplate/common/widget/text_view.dart';

import '../../../theme/my_colors.dart';
import '../../../theme/text_styling.dart';

class MyLoaderElvButton extends StatelessWidget {
  final bool loader;
  final VoidCallback? onPressed;
  final String text;
  final Widget? prefixIcon, suffixIcon;
  final Color? buttonBGColor, disabledTextColor, textColor;
  final double height, loaderWidth;

  const MyLoaderElvButton({
    Key? key,
    required this.text,
    required this.loader,
    this.onPressed,
    this.buttonBGColor,
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
          color: onPressed != null
              ? buttonBGColor ?? MyColors.primaryBlue
              : MyColors.transparent,
          borderRadius: BorderRadius.circular(loader ? 30 : 6),
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
            : ElevatedButton(
                onPressed: onPressed,
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    onPressed != null ? MyColors.primaryBlue : null,
                  ),
                  shadowColor:
                      MaterialStateProperty.all(Colors.transparent),
                  // shape: ButtonStyleButton.allOrNull<OutlinedBorder>(
                  //   RoundedRectangleBorder(
                  //     borderRadius:
                  //         BorderRadius.circular(loader ? 30.0 : 6),
                  //   ),
                  // ),
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
                              color: textColor ?? MyColors.white)),
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
