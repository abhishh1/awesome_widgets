import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AwesomeTextfield {
  static Widget filled({
    required TextEditingController textEditingController,
    required Color fillColor,
    String? hintText,
    Function(String)? onSubmitted,
    Function(String)? onChanged,
    TextCapitalization? textCapitalization,
    List<TextInputFormatter>? textInputFormatter,
    FocusNode? focusNode,
    Color? backgroundColor,
    double? width,
    double? height,
    TextStyle? titleTextstyle,
    TextStyle? hintTextstyle,
    InputDecoration? inputDecoration,
    double? borderRadius,
    int? minLines,
    int? maxLines,
  }) {
    return Container(
        width: width ?? 400,
        height: height ?? 100,
        child: TextField(
          minLines: minLines,
          maxLines: maxLines,
          onSubmitted: onSubmitted,
          focusNode: focusNode,
          textCapitalization: textCapitalization ?? TextCapitalization.none,
          inputFormatters: textInputFormatter,
          onChanged: onChanged,
          controller: textEditingController,
          style: titleTextstyle ?? TextStyle(color: Colors.white, fontSize: 12),
          decoration: InputDecoration(
            filled: true,
            fillColor: fillColor,
            hintText: hintText,
            hintStyle: hintTextstyle,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(borderRadius ?? 8),
            ),
          ),
        ));
  }
}
