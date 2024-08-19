// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/helpers/local_navigator.dart';
import 'package:house_decoration_web/core/widgets/app_bar.dart';
import 'package:house_decoration_web/core/widgets/float_button.dart';
import 'package:house_decoration_web/core/widgets/side_menu.dart';

class Layout extends StatelessWidget {
  const Layout({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> scaffoldKay = GlobalKey();

    return 
     
     Scaffold(
          floatingActionButton: FloatButton(),
           extendBodyBehindAppBar: true,
            key: scaffoldKay,
            appBar: TopAppBar(context, scaffoldKay ),
            drawer:  Drawer(
              width:200,
              child: SideMenu(),
            ),
            body: localNavigator()
      
    );
  }
}

