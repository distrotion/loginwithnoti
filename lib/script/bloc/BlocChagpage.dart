import 'dart:async';
import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../global_var.dart';
import 'BlocNoti.dart';

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
late Future<String> token;

class SwPageCubit extends Cubit<String> {
  SwPageCubit() : super("");

  void togglePage(String datain) async {
    //print(datain);
    final SharedPreferences prefs = await _prefs;

    notireturnCH(datain);

    String token = (prefs.getString('token') ?? '');
    print('>>>>' + token);
    if (token == '') {
      //datain = 'login';
      if (datain == "loginpage") {
        emit("loginpage");
      } else {
        emit("loginpage");
      }
    } else {
      var _data_in_token = jsonDecode(token);
      //print('>>Roleid>>' + _data_in_token['Roleid'].toString());
      if (datain == "Page1" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage1) {
        emit("Page1");
      } else if (datain == "Page2" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage2) {
        emit("Page2");
      } else if (datain == "Page3" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage3) {
        emit("Page3");
      } else if (datain == "Page4" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage4) {
        emit("Page4");
      } else if (datain == "Page5" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage5) {
        emit("Page5");
      } else if (datain == "Page6" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage6) {
        emit("Page6");
      } else if (datain == "Page7" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage7) {
        emit("Page7");
      } else if (datain == "Page8" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage8) {
        emit("Page8");
      } else if (datain == "Page9" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage9) {
        emit("Page9");
      } else if (datain == "Page10" &&
          _data_in_token['Status'] == 'ok' &&
          _data_in_token['Roleid'].toInt() > sePage10) {
        emit("Page10");
      } else {
        emit("Page1");
      }
    }
  }
}
