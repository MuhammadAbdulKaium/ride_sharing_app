import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/icons/cart_icon.svg',
        colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
        height: 100,
      ),
    );
  }
}
