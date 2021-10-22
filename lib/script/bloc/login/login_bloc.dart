import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tpk_login_arsa_01/global_var.dart';
import 'package:tpk_login_arsa_01/script/bloc/BlocNoti.dart';
import 'package:tpk_login_arsa_01/script/bloc/login/login_event.dart';

//----------------------------------------------------------------
import 'package:http/http.dart' as http;
//----------------------------------------------------------------

Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
late Future<String> token;

class LoginBloc extends Bloc<LoginEvent, String> {
  LoginBloc() : super('');

  @override
  Stream<String> mapEventToState(LoginEvent event) async* {
    if (event == LoginEvent.login) {
      yield* login_fn(state);
    } else if (event == LoginEvent.logout) {
      yield* logout_fn(state);
    } else if (event == LoginEvent.inintlogin) {
      yield* inintdata(state);
    }
  }
}

Stream<String> login_fn(String state) async* {
  //--------------------------------------------------------bloc/qbit
  final SharedPreferences prefs = await _prefs;
  state = (prefs.getString('token') ?? '');
  state = '{"Status":"ok","Roleid":5,"Name":"Arsa"}';
  // state = '';
  //===================================================

  // final response = await http.post(Uri.parse("http://localhost:9000/login"),
  //     body: {"user": GloUserID, "password": GloPassword});
  // var databuff;
  // if (response.statusCode == 200) {
  //   databuff = jsonDecode(response.body);
  //   if (databuff['Status'] == 'ok') {
  //     print(response.body);
  //     GloUserID = '';
  //     GloPassword = '';
  //     state = response.body;
  //   } else {
  //     print("wrong password");
  //     state = '';
  //   }
  // } else {
  //   print("where is my server");
  // }
  notireturn();
  //--------------------------------------------------------state return

  token = prefs.setString("token", state).then((bool success) {
    return state;
  });
  yield state;
}

Stream<String> logout_fn(String state) async* {
  final SharedPreferences prefs = await _prefs;
  String tokem_out_raw;
  tokem_out_raw = (prefs.getString('token') ?? '');
  state = '';
  token = prefs.setString("token", state).then((bool success) {
    return state;
  });
  yield state;
}

Stream<String> inintdata(String state) async* {
  final SharedPreferences prefs = await _prefs;
  state = (prefs.getString('token') ?? '');
  print(state);
  yield state;
}
