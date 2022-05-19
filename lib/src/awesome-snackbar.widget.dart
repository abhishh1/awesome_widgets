import 'package:flutter/material.dart';

class AwesomeSnackbar {
  static style1(
      {required BuildContext context,
      required Color primaryColor,
      required String title,
      subTitle,
      actionLabel,
      required TextStyle titleTextstyle,
      subtitleTextstyle,
      actionLabelTextstyle,
      required Function onActionTap,
      required IconData iconData,
      required double height,
      width,
      iconAvatarRadius,
      required Color backgrounColor,
      iconColor}) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
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
                const SizedBox(width: 20),
                CircleAvatar(
                    radius: iconAvatarRadius,
                    backgroundColor: primaryColor,
                    child: Center(child: Icon(iconData, color: iconColor))),
                const SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,
                        overflow: TextOverflow.ellipsis, style: titleTextstyle),
                    Text(subTitle,
                        overflow: TextOverflow.ellipsis,
                        style: subtitleTextstyle)
                  ],
                ),
                const Spacer(),
                TextButton(
                    onPressed: onActionTap(),
                    child: Text(actionLabel, style: actionLabelTextstyle))
              ],
            ),
            height: height,
            width: width,
            decoration: BoxDecoration(color: backgrounColor),
          ),
        )));
  }
}
