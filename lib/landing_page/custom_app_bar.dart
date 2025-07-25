import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:ride_sharing_app/extensions/context_extensions.dart';
import 'package:ride_sharing_app/theme/app_text_style.dart';

class CustomAppBar extends StatefulWidget {
  final String title;
  const CustomAppBar({super.key, required this.title});

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 28, 13),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/icons/hamburger_menu.svg',
                      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: context.screenWidthUnitDesignPerspective * 22,
                    ),
                    SizedBox(width: context.screenWidthUnitDesignPerspective * 19,),
                    Text(widget.title, style: AppTextStyle.textStyle16cFFFFFFw600,)
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/search.svg',
                      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: context.screenWidthUnitDesignPerspective * 18,
                    ),
                    SizedBox(width: context.screenWidthUnitDesignPerspective * 29.8,),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/cart.svg',
                          colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                          width: context.screenWidthUnitDesignPerspective * 20,
                        ),
                        Positioned(
                          top: -4,
                          right: -4,
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            constraints: const BoxConstraints(
                              // minWidth: 16,
                              // minHeight: 16,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(1.8, 0, 2.5, 1.5),
                              child: Center(
                                child: Text(
                                  '3',
                                  style: AppTextStyle.textStyle9cFFFFFFw600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: context.screenWidthUnitDesignPerspective * 29.8,),
                    SvgPicture.asset(
                      'assets/icons/heart.svg',
                      colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: context.screenWidthUnitDesignPerspective * 20,
                    ),
                    // SizedBox(width: context.screenWidthUnitDesignPerspective * 19,),
                  ],
                )
              )
            ],
          ),
        ),
      ],
    );
  }
}
