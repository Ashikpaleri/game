import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/response/response.dart';
import 'package:get/get_core/src/get_main.dart';

class ErrorHandleError {
  static errorHandleError(Response response) {
    switch (response.statusCode) {
      case 200:
        print(response.headers);
        break;
      case 401:
        print(response.statusCode);
        break;

      default:
        Get.snackbar("Something Wrong", response.statusText!,
            // backgroundColor: secondaryColor,
            borderRadius: 10.0,
            overlayBlur: 0.0,
            barBlur: 0.0,
            colorText: Colors.black);
    }
  }
}