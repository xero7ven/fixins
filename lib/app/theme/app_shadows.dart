import 'package:flutter/material.dart';

class AppShadows {
  AppShadows._();

  static const card = BoxShadow(
    color: Color(0x14000000),
    blurRadius: 18,
    offset: Offset(0, 8),
  );

  static const elevated = BoxShadow(
    color: Color(0x22000000),
    blurRadius: 30,
    offset: Offset(0, 14),
  );
}