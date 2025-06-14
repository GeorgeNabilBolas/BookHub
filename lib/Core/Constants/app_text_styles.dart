import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'app_colors.dart';

class AppTextStyles {
  static const String kMontserrat = 'montserrat';
  static const String kGTSectraFine = 'GT-Sectra-Fine';
  static const TextStyle text24 = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w900,
    fontFamily: kMontserrat,
  );
  static const TextStyle text18 = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: kMontserrat,
  );
  static const TextStyle text16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontFamily: kMontserrat,
  );
  static const TextStyle text14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
    fontFamily: kMontserrat,
    color: AppColors.textOpacity,
  );

  static const TextStyle text15 = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
    fontFamily: kMontserrat,
  );
  static const TextStyle text20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: kGTSectraFine,
  );
  static const TextStyle text30 = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.w400,
    fontFamily: kGTSectraFine,
  );
}
