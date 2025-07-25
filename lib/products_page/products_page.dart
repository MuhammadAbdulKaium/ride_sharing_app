import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductsPage extends StatefulWidget {
  const ProductsPage({super.key});

  @override
  State<ProductsPage> createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/icons/product_icon.svg',
        colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
        height: 100,
      ),
    );
  }
}
