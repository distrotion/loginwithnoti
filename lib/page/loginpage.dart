import 'package:flutter/material.dart';
//--------------------------------------------- Bloc
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_arsa_01/script/bloc/BlocChagpage.dart';
import 'package:tpk_login_arsa_01/script/bloc/login/login_bloc.dart';
import 'package:tpk_login_arsa_01/script/bloc/login/login_event.dart';

import '../global_var.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<LoginBloc>().add(LoginEvent.inintlogin);
    BlocProvider.of<SwPageCubit>(context).togglePage("Page1");
    return Scaffold(
      body: Center(
        child: Container(
          height: 400,
          width: 350,
          child: SingleChildScrollView(
              child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.only(start: 50, end: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  Container(
                    height: 100,
                    // width: 300,
                    decoration: BoxDecoration(
                      // color: Colors.red,
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo_tpk.png"),
                        fit: BoxFit.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      onChanged: (value) {
                        GloUserID = value;
                      },
                      initialValue: "",
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'TPK ID',
                        hintStyle: TextStyle(
                          fontFamily: 'Mitr',
                          color: Color(0xffb2b2b2),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        // suffixIcon: Icon(
                        //   Icons.search,
                        // ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 40,
                    child: TextFormField(
                      onChanged: (value) {
                        GloPassword = value;
                      },
                      obscureText: true,
                      initialValue: "",
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(8),
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontFamily: 'Mitr',
                          color: Color(0xffb2b2b2),
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          fontStyle: FontStyle.normal,
                          letterSpacing: 0,
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 1),
                          borderRadius: BorderRadius.circular(8),
                        ),

                        // suffixIcon: Icon(
                        //   Icons.search,
                        // ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _LoginSignin(),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
    );
  }
}

class _LoginSignin extends StatelessWidget {
  const _LoginSignin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          context.read<LoginBloc>().add(LoginEvent.login);
          // BlocProvider.of<SwPageCubit>(context).togglePage("Page1");
        },
        child: Container(
          height: 40,
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              "Sign IN",
              style: TextStyle(
                fontFamily: 'Mitr',
                color: Colors.black,
                fontSize: 14,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.normal,
                letterSpacing: 0,
              ),
            ),
          ),
        ));
  }
}
