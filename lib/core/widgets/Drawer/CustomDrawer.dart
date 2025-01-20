import 'package:flutter/material.dart';
import 'package:responsive_dashboard/core/models/drawerItemModel.dart';
import 'package:responsive_dashboard/core/utils/assets.dart';
import 'package:responsive_dashboard/core/widgets/Drawer/CustomInActiveDrawerItem.dart';
import 'package:responsive_dashboard/core/widgets/Drawer/DrawerItem.dart';
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
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: Customlisttilewidget(
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com",
                image: Assets.assetsImagesUserIcon),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          SliverToBoxAdapter(
              child: Column(
            children: Draweritemmodel.toList().asMap().entries.map((e) {
              return InkWell(
                  onTap: () {
                    setState(() {
                      currentdraweritemIndex = e.key;
                    });
                  },
                  child: Draweritem(
                      isSelected:
                          currentdraweritemIndex == e.key ? true : false,
                      draweritementity: e.value));
            }).toList(),
          )),
          const SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Spacer(),
                Custominactivedraweritem(
                    inactiveImage: Assets.assetsImagesSettingIcon,
                    title: "Setting system"),
                SizedBox(
                  height: 20,
                ),
                Custominactivedraweritem(
                    inactiveImage: Assets.assetsImagesLogoutIcon,
                    title: "Logout account"),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
