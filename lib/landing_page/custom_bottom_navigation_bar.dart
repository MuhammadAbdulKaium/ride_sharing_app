import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:ride_sharing_app/extensions/context_extensions.dart';
import 'package:ride_sharing_app/theme/app_text_style.dart';
import '../controller/landing_page_controller.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    final LandingPageController landingPageController = Get.put(LandingPageController());
    return Obx(() {
      return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(
            top: BorderSide(
              color: Color(0xFFDDDDDD),
              width: 1
            )
          )
        ),
        child: NavigationBarTheme(
          data: NavigationBarThemeData(
            indicatorColor: const Color(0xFFF4FCF7),
            labelTextStyle: WidgetStateProperty.resolveWith((states) {
              return states.contains(WidgetState.selected)
                  ? AppTextStyle.textStyle11c584CF4w500
                  : AppTextStyle.textStyle11c666666w500;
            }),
            iconTheme: WidgetStateProperty.all(
              const IconThemeData(color: Color(0xFF666666)),
            ),
          ),
          child: NavigationBar(
            animationDuration: const Duration(milliseconds: 1000),
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            onDestinationSelected: (int index) {
              landingPageController.changePage(index);
              // landingPageController.update();
            },
            selectedIndex: landingPageController.selectedPageIndex.value,
            destinations: <NavigationDestination>[
              NavigationDestination(
                selectedIcon: SvgPicture.asset('assets/icons/home_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF584CF4), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 20.5,),
                icon: SvgPicture.asset('assets/icons/home_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF666666), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 20.5,),
                label: 'Home',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset('assets/icons/product_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF584CF4), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 20.5,),
                icon: SvgPicture.asset('assets/icons/product_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF666666), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 20.5,),
                label: 'Products',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset('assets/icons/care_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF584CF4), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 21.5,),
                icon: SvgPicture.asset('assets/icons/care_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF666666), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 21.5,),
                label: 'Care',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset('assets/icons/cart_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF584CF4), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 21,),
                icon: SvgPicture.asset('assets/icons/cart_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF666666), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 21,),
                label: 'Shop',
              ),
              NavigationDestination(
                selectedIcon: SvgPicture.asset('assets/icons/community_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF584CF4), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 26.5,),
                icon: SvgPicture.asset('assets/icons/community_icon.svg',colorFilter: ColorFilter.mode(Color(0xFF666666), BlendMode.srcIn), width: context.screenWidthUnitDesignPerspective * 26.5,),
                label: 'Community',
              ),
            ],
          ),
        ),
      );
    });
  }
}
