import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:tager/view/home/home.dart';
import 'package:tager/view/new_order/new_order.dart';
import 'package:tager/view/order/order.dart';
import '../clients/client.dart';
import '../items_product/item_product.dart';

class ButtonNavigationBar extends StatelessWidget {
  const ButtonNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller;

    controller = PersistentTabController(initialIndex: 0);
    List<Widget> Screens() {
      return [
        const HomePage(),
        const ItemsProductPage(),
        const NewOrder(),
        const Order(),
        const ClientPage()
      ];
    }

    List<PersistentBottomNavBarItem> navBarsItems() {
      return [
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.blueAccent,
          textStyle: const TextStyle(fontSize: 11),
          icon: Image.asset(
            "assets/icons/home.png",
            height: 35,
            width: 35,
            fit: BoxFit.fill,
          ),
          title: ("الرئيسية"),
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.blueAccent,
          textStyle: const TextStyle(fontSize: 11),
          icon: Image.asset(
            "assets/icons/basket.png",
            height: 35,
            width: 35,
            fit: BoxFit.fill,
          ),
          title: ("المنتجات"),
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.white,
          icon: const Icon(
            Icons.add,
            color: Colors.black,
          ),
          title: (" "),
          activeColorPrimary: Colors.blue.shade400,
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.blueAccent,
          textStyle: const TextStyle(fontSize: 11),
          icon: Image.asset(
            "assets/icons/cart.png",
            height: 35,
            width: 35,
            fit: BoxFit.fill,
          ),
          title: ("الطلبات"),
          inactiveColorPrimary: Colors.black,
        ),
        PersistentBottomNavBarItem(
          activeColorSecondary: Colors.blueAccent,
          textStyle: const TextStyle(fontSize: 11),
          icon: Image.asset(
            "assets/icons/person.png",
            height: 80,
            width: 40,
            fit: BoxFit.fill,
          ),
          title: ("العملاء"),
          inactiveColorPrimary: Colors.black,
        ),
      ];
    }

    return PersistentTabView(
      popAllScreensOnTapAnyTabs: true,
      onItemSelected: (value) {},
      navBarHeight: 80,
      context,
      controller: controller,
      screens: Screens(),
      items: navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      handleAndroidBackButtonPress: true,
      resizeToAvoidBottomInset: true,
      stateManagement: true,
      hideNavigationBarWhenKeyboardShows: true,
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
        curve: Curves.slowMiddle,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle: NavBarStyle.style15,
    );
  }
}
