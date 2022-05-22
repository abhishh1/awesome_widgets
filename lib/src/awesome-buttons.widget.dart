import 'package:flutter/material.dart';

class AwesomeButton {
  static Widget roundedIconButton(
      {required Function onTap,
      required String title,
      Color? backgroundColor,
      double? width,
      double? height,
      double? radius,
      Icon? icon,
      TextStyle? titleTextstyle}) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: width ?? 400,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) icon,
            if (icon != null) SizedBox(width: 20),
            Text(title,
                style: titleTextstyle ??
                    TextStyle(fontSize: 14, color: Colors.white))
          ],
        ),
        height: height ?? 50,
        decoration: BoxDecoration(
            color: backgroundColor ?? Colors.blue,
            borderRadius: BorderRadius.circular(radius ?? 8)),
      ),
    );
  }

  static Widget iconButton(
      {required Function onTap,
      required Icon icon,
      Color? backgroundColor,
      double? width,
      double? height,
      double? radius}) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        width: width ?? 50,
        child: icon,
        height: height ?? 50,
        decoration: BoxDecoration(
            color: backgroundColor ?? Colors.blue,
            borderRadius: BorderRadius.circular(radius ?? 8)),
      ),
    );
  }
}
