import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_sharing_app/theme/app_text_style.dart';

class NearbyUsers extends StatefulWidget {
  final List<Map<String, String>> nearbyUsers;

  const NearbyUsers({super.key, required this.nearbyUsers});

  @override
  State<NearbyUsers> createState() => _NearbyUsersState();
}

class _NearbyUsersState extends State<NearbyUsers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 17, 16, 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Nearby Users', style: AppTextStyle.textStyle16c222222w600),
              Row(
                children: [
                  Text('View all', style: AppTextStyle.textStyle14c584CF4w400),
                  SizedBox(width: 4),
                  SvgPicture.asset(
                    'assets/icons/back.svg',
                    colorFilter: ColorFilter.mode(
                      Color(0xFF584CF4),
                      BlendMode.srcIn,
                    ),
                    width: 6,
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(26, 4, 0, 0),
          child: Row(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  child: Row(
                    children: widget.nearbyUsers.map((nearbyUser) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 29,
                              backgroundColor: Colors.transparent,
                              backgroundImage: AssetImage(
                                nearbyUser['avatar'] ??
                                    'assets/images/avatar1.png',
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              nearbyUser['name'] ?? '',
                              style: AppTextStyle.textStyle13c666666w400,
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
