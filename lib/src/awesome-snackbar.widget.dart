import 'package:flutter/material.dart';

class AwesomeSnackbar {
  static style1({
    required BuildContext context,
    required Color primaryColor,
    required String title,
    String? subTitle,
    String? actionLabel,
    TextStyle? titleTextstyle,
    TextStyle? subtitleTextstyle,
    TextStyle? actionLabelTextstyle,
    Function? onActionTap,
    IconData? iconData,
    double? height,
    double? width,
    double? iconAvatarRadius,
    required Color backgroundColor,
    Color? iconColor,
    Duration? duration,
    DismissDirection? direction,
  }) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: duration ?? Duration(seconds: 3),
        dismissDirection: direction ?? DismissDirection.down,
        behavior: SnackBarBehavior.floating,
        elevation: 0,
        backgroundColor: Colors.transparent,
        content: ClipRRect(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          borderRadius: BorderRadius.circular(15),
          child: Container(
            child: Row(
              children: [
                Container(width: 20, color: primaryColor),
                if (iconData != null) const SizedBox(width: 20),
                if (iconData != null)
                  CircleAvatar(
                      radius: iconAvatarRadius ?? 20,
                      backgroundColor: primaryColor,
                      child: Center(
                          child: Icon(iconData,
                              color: iconColor ?? Colors.white))),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        overflow: TextOverflow.ellipsis, style: titleTextstyle),
                    if (subTitle != null)
                      Text(subTitle,
                          overflow: TextOverflow.ellipsis,
                          style: subtitleTextstyle)
                  ],
                ),
                const Spacer(),
                if (actionLabel != null)
                  TextButton(
                      onPressed: () {
                        onActionTap ?? null;
                      },
                      child: Text(actionLabel, style: actionLabelTextstyle))
              ],
            ),
            height: height ?? 70,
            width: width ?? double.infinity,
            decoration: BoxDecoration(color: backgroundColor),
          ),
        )));
  }
}
