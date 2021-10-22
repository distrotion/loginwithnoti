import 'package:flutter/material.dart';
import 'package:tpk_login_arsa_01/script/bloc/BlocNoti.dart';

import 'script/bloc/BlocPageRebuild.dart';
import 'switchPage.dart';
//--------------------------------------------- Bloc
import 'package:flutter_bloc/flutter_bloc.dart';

//---------------------------------------------

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider<BlocPageRebuild>(
            create: (BuildContext context) =>
                BlocPageRebuild(), //For rebuild only page inside without app bar/left menu
          ),
          BlocProvider<BlocPageRebuild>(
            create: (BuildContext context) =>
                BlocPageRebuild(), //For rebuild only page inside without app bar/left menu
          ),
          BlocProvider<BlocNotification>(
            create: (BuildContext context) =>
                BlocNotification(), //For rebuild only page inside without app bar/left menu
          ),
        ],
        child: BlocBuilder<BlocPageRebuild, bool>(builder: (_, e) {
          return MaterialApp(
            title: 'TPK SAR',
            theme: ThemeData(
              primarySwatch: Colors.blueGrey,
            ),
            debugShowCheckedModeBanner: false,
            home: MainCenter(),
          );
        }));
  }
}

// BlocPageRebuild blocPageRebuild = BlocProvider.of<BlocPageRebuild>(context).rebuildPage();
