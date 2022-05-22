import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class AwesomeDimensions {
  static double vBox1 = 1.0.h;
  static double vBox2 = 2.0.h;
  static double vBox3 = 4.0.h;
  static double vBox4 = 16.0.h;
  static double vBox5 = 32.0.h;

  static double hBox1 = 1.0.w;
  static double hBox2 = 2.0.w;
  static double hBox3 = 4.0.w;
  static double hBox4 = 16.0.w;
  static double hBox5 = 32.0.w;

  static SizedBox vSizedBox1 = SizedBox(height: vBox1);
  static SizedBox vSizedBox2 = SizedBox(height: vBox2);
  static SizedBox vSizedBox3 = SizedBox(height: vBox3);
  static SizedBox vSizedBox4 = SizedBox(height: vBox4);
  static SizedBox vSizedBox5 = SizedBox(height: vBox5);

  static SizedBox hSizedBox1 = SizedBox(width: hBox1);
  static SizedBox hSizedBox2 = SizedBox(width: hBox2);
  static SizedBox hSizedBox3 = SizedBox(width: hBox3);
  static SizedBox hSizedBox4 = SizedBox(width: hBox4);
  static SizedBox gSizedBox5 = SizedBox(height: hBox5);
}
