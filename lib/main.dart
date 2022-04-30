import 'package:armgames/constants.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        appBarTheme: AppBarTheme(color: dark2Color),
        scaffoldBackgroundColor: Color(0xff070226),
        fontFamily: 'JosefinSans',
      ),
    ),
  );
}
