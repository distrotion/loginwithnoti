import 'package:flutter/material.dart';
import 'package:tpk_login_arsa_01/page/loginpage.dart';
import 'package:tpk_login_arsa_01/page/page1.dart';
import 'package:tpk_login_arsa_01/page/page10.dart';
import 'package:tpk_login_arsa_01/page/page2.dart';
import 'package:tpk_login_arsa_01/page/page3.dart';
import 'package:tpk_login_arsa_01/page/page4.dart';
import 'package:tpk_login_arsa_01/page/page5.dart';
import 'package:tpk_login_arsa_01/page/page6.dart';
import 'package:tpk_login_arsa_01/page/page7.dart';
import 'package:tpk_login_arsa_01/page/page8.dart';
import 'package:tpk_login_arsa_01/page/page9.dart';

Widget selectpage(String input) {
  Widget output = LoginPage();

  if (input == "Page1") {
    output = Page1();
  } else if (input == "Page2") {
    output = Page2();
  } else if (input == "Page3") {
    output = Page3();
  } else if (input == "Page3") {
    output = Page3();
  } else if (input == "Page4") {
    output = Page4();
  } else if (input == "Page5") {
    output = Page5();
  } else if (input == "Page6") {
    output = Page6();
  } else if (input == "Page7") {
    output = Page7();
  } else if (input == "Page8") {
    output = Page8();
  } else if (input == "Page9") {
    output = Page9();
  } else if (input == "Page10") {
    output = Page10();
  } else if (input == 'loginpage') {
    output = LoginPage();
  } else {
    output = LoginPage();
  }

  return output;
}

bool page_selected(String input1, String input2) {
  bool output = false;

  if (input1 == input2) {
    output = true;
  } else {
    output = false;
  }

  return output;
}
