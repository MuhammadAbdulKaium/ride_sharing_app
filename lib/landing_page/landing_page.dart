import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ride_sharing_app/care_page/care_page.dart';
import 'package:ride_sharing_app/community_page/community_page.dart';
import 'package:ride_sharing_app/controller/landing_page_controller.dart';
import 'package:ride_sharing_app/home_page/home_page.dart';
import 'package:ride_sharing_app/landing_page/custom_app_bar.dart';
import 'package:ride_sharing_app/landing_page/custom_bottom_navigation_bar.dart';
import 'package:ride_sharing_app/products_page/products_page.dart';
import 'package:ride_sharing_app/shop_page/shop_page.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController = Get.put(LandingPageController());
    final List<Widget> page = [const HomePage(), const ProductsPage(), const CarePage(), const ShopPage(), const CommunityPage()];
    final List<String> pageTitle = ['Home', 'Products', 'Care', 'Shop', 'Community'];
    return Obx(() {
      return Scaffold(
        backgroundColor: Color(0xFFFFFFFF),
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Color(0xFF584CF4),
              expandedHeight: 65,
              floating: true,
              automaticallyImplyLeading: false,
              leading: null,
              flexibleSpace: FlexibleSpaceBar(
                background: CustomAppBar(title: pageTitle[landingPageController.selectedPageIndex.value],),
              ),
            ),
            SliverToBoxAdapter(
              child: Container(
                alignment: Alignment.topCenter,
                child: page.length > landingPageController.selectedPageIndex.value
                    ? page[landingPageController.selectedPageIndex.value]
                    : Container(),
              ),
            )
          ],
        ),
        bottomNavigationBar: CustomBottomNavigationBar(),
      );
    });
  }
}
