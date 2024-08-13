import 'package:flutter/material.dart';
import 'package:house_decoration_web/core/routing/routes.dart';
import 'package:house_decoration_web/core/widgets/drawer_item_widget.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: mainItemRoute
          .map((item) => DrawerItemWidget(
              title: item,
              routeName: item,
              isService: item == servicePageRoute ? true : false))
          .toList(),
    );
  }
}
