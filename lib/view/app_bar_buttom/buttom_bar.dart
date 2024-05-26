import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent_bottom_nav_bar_v2.dart';
import 'package:tager/view/coupon/coupon.dart';
import 'package:tager/view/home/home.dart';
import '../clients/client.dart';
import '../items_product/item_product.dart';
import '../order/order.dart';

class BottomBarCustom extends StatefulWidget {
  const BottomBarCustom({super.key});

  @override
  State<BottomBarCustom> createState() => _BottomBarCustomState();
}

class _BottomBarCustomState extends State<BottomBarCustom> {
  final List<PersistentTabConfig> _navBarsItems = [
    PersistentTabConfig(
      screen: const HomePage(),
      item: ItemConfig(
        icon: Image.asset(
          "assets/icons/home.png",
          height: 35,
          width: 35,
          fit: BoxFit.fill,
        ),
        title: ("الرئيسية"),
      ),
    ),
    PersistentTabConfig(
      screen: const ItemsProductPage(),
      item: ItemConfig(
        icon: Image.asset(
          "assets/icons/delivery-box.png",
          height: 35,
          width: 35,
          fit: BoxFit.fill,
        ),
        title: ("المنتجات"),
      ),
    ),
    PersistentTabConfig(
      screen: const Order(),
      item: ItemConfig(
        icon: Image.asset(
          "assets/icons/cart.png",
          height: 35,
          width: 35,
          fit: BoxFit.fill,
        ),
        title: ("الطلبات"),
      ),
    ),
    PersistentTabConfig(
      screen: const ClientPage(),
      item: ItemConfig(
        icon: Image.asset(
          "assets/icons/person.png",
          height: 80,
          width: 40,
          fit: BoxFit.fill,
        ),
        title: ("العملاء"),
      ),
    ),
    PersistentTabConfig(
      screen: const CouponPage(),
      item: ItemConfig(
        icon: Image.asset(
          "assets/icons/coupon.png",
          height: 80,
          width: 40,
          fit: BoxFit.fill,
        ),
        title: ("الكوبونات"),
      ),
    ),
  ];

  PersistentTabController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PersistentTabController(initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      controller: _controller,
      backgroundColor: Colors.white,
      tabs: _navBarsItems,
      navBarBuilder: (navBarConfig) => Style7BottomNavBar(
        navBarConfig: navBarConfig,
      ),
    );
  }
}
