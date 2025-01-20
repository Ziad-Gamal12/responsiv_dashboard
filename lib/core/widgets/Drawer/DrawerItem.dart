import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/entities/drawerItemEntity.dart';
import 'package:responsive_dashboard/core/widgets/Drawer/CustomInActiveDrawerItem.dart';
import 'package:responsive_dashboard/core/widgets/Drawer/customActiveDrawerItem.dart';

class Draweritem extends StatelessWidget {
  const Draweritem(
      {super.key, required this.isSelected, required this.draweritementity});
  final bool isSelected;
  final Draweritementity draweritementity;
  @override
  Widget build(BuildContext context) {
    return isSelected == true
        ? Customactivedraweritem(
            activeimage: draweritementity.activeimage,
            title: draweritementity.title,
          )
        : Custominactivedraweritem(
            inactiveImage: draweritementity.inActiveimage,
            title: draweritementity.title,
          );
  }
}
