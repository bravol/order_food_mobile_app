import 'package:flutter/material.dart';

class AppWidget {
  static TextStyle boldTextStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle headerTextStyle() {
    return const TextStyle(
      color: Colors.black,
      fontSize: 24.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.bold,
    );
  }

  static TextStyle lightTextStyle() {
    return const TextStyle(
      color: Colors.black38,
      fontSize: 15.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle semiBoldTextStyle() {
    return const TextStyle(
      color: Colors.black87,
      fontSize: 18.0,
      fontFamily: 'Poppins',
      fontWeight: FontWeight.w700,
    );
  }
}
