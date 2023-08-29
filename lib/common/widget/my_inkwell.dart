// import 'package:flutter/material.dart';
//
// class MyInkWell extends StatelessWidget {
//   final Widget? child;
//   final Color? backGroundColor;
//   final VoidCallback? onTab, onLongPress;
//   final EdgeInsets? padding;
//   final double? radius;
//   final Border? border;
//
//   const MyInkWell({
//     Key? key,
//     this.child,
//     this.onTab,
//     this.onLongPress,
//     this.backGroundColor,
//     this.padding,
//     this.radius,
//     this.border,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       borderRadius: BorderRadius.circular(radius ?? 0),
//       clipBehavior: Clip.hardEdge,
//       color: backGroundColor ?? MyThemeColor.cardColor(context),
//       child: InkWell(
//         onTap: onTab,
//         customBorder: Border.all(color: MyColors.red, width: 12),
//         onLongPress: onLongPress,
//         child: Padding(
//           padding: padding ?? const EdgeInsets.fromLTRB(0, 10, 0, 10),
//           child: child,
//         ),
//       ),
//     );
//   }
// }
