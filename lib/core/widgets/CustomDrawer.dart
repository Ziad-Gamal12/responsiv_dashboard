import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/drawerItemModel.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';
import 'package:responsive_dashboard/core/widgets/CustomInActiveDrawerItem.dart';
import 'package:responsive_dashboard/core/widgets/DrawerItem.dart';
import 'package:responsive_dashboard/core/widgets/customListTileWidget.dart';

class Customdrawer extends StatefulWidget {
  const Customdrawer({super.key});

  @override
  State<Customdrawer> createState() => _CustomdrawerState();
}

class _CustomdrawerState extends State<Customdrawer> {
  int currentdraweritemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          const Customlisttilewidget(
              title: "Lekan Okeowo",
              subtitle: "demo@gmail.com",
              image: Assets.assetsImagesUserIcon),
          const SizedBox(
            height: 8,
          ),
          Column(
            children: Draweritemmodel.toList().asMap().entries.map((e) {
              return InkWell(
                onTap: () {
                  setState(() {
                    currentdraweritemIndex = e.key;
                  });
                },
                child: Draweritem(
                    isSelected: currentdraweritemIndex == e.key ? true : false,
                    draweritementity: e.value),
              );
            }).toList(),
          ),
          const Spacer(),
          const Custominactivedraweritem(
              inactiveImage: Assets.assetsImagesSettingIcon,
              title: "Setting system"),
          const SizedBox(
            height: 20,
          ),
          const Custominactivedraweritem(
              inactiveImage: Assets.assetsImagesLogoutIcon,
              title: "Logout account"),
          const SizedBox(
            height: 48,
          )
        ],
      ),
    );
  }
}
