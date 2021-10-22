import 'package:flutter/material.dart';

//---------------------------------------------------------
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tpk_login_arsa_01/script/bloc/BlocChagpage.dart';
import 'package:tpk_login_arsa_01/script/bloc/BlocNoti.dart';
import 'package:tpk_login_arsa_01/script/bloc/BlocPageRebuild.dart';

import '../global_var.dart';
//---------------------------------------------------------

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return testbody();
  }
}

class testbody extends StatefulWidget {
  // const testbody({Key? key}) : super(key: key);
  @override
  _testbodyState createState() => _testbodyState();
}

class _testbodyState extends State<testbody> {
  int x = 0;

  @override
  Widget build(BuildContext context) {
    Container subpage1 = Container(
      height: 200,
      width: 200,
      color: Colors.red,
    );
    Container subpage2 = Container(
      height: 200,
      width: 200,
      color: Colors.pink,
    );
    Container subpage3 = Container(
      height: 200,
      width: 200,
      color: Colors.orange,
    );
    Container out;
    if (x == 0) {
      out = subpage1;
    } else if (x == 1) {
      out = subpage2;
    } else {
      out = subpage3;
    }

    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                notireturn();
                // BlocProvider.of<BlocNotification>(context).UpdateNotification(
                //     "",
                //     "Please fill email and password",
                //     enumNotificationlist.Success);
                // setState(() {
                //   x = x + 1;
                //   print(x);
                //   BlocProvider.of<BlocPageRebuild>(context).rebuildPage();
                // });
              },
              child: Container(
                height: 25,
                width: 100,
                color: Colors.black,
              ),
            ),
            InkWell(
              onTap: () {
                // BlocProvider.of<BlocNotification>(context).UpdateNotification(
                //     "",
                //     "Please fill email and password",
                //     enumNotificationlist.Warning);
                notireturn();
                // BlocProvider.of<SwPageCubit>(context).togglePage(Page3);
                // setState(() {
                //   x = x - 1;
                //   print(x);
                // BlocProvider.of<BlocPageRebuild>(context).rebuildPage();
                // });
              },
              child: Container(
                height: 25,
                width: 100,
                color: Colors.black45,
              ),
            ),
          ],
        ),
        Center(child: out)
      ],
    );
  }
}


//BlocProvider.of<SwPageCubit>(context).togglePage(page);
// BlocPageRebuild blocPageRebuild = BlocProvider.of<BlocPageRebuild>(context).rebuildPage();