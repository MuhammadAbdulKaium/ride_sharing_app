import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_sharing_app/home_page/nearby_users.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> nearbyUsers = [
      {'avatar': 'assets/images/avatar1.png', 'name': 'Ankita'},
      {'avatar': 'assets/images/avatar2.png', 'name': 'Pankaj'},
      {'avatar': 'assets/images/avatar3.png', 'name': 'Manish'},
      {'avatar': 'assets/images/avatar4.png', 'name': 'Suresh'},
      {'avatar': 'assets/images/avatar5.png', 'name': 'Ankur'},
      {'avatar': 'assets/images/avatar6.png', 'name': 'Deepesh'},
      {'avatar': 'assets/images/avatar7.png', 'name': 'Abc'},
    ];
    return Column(
      children: [
        NearbyUsers(nearbyUsers: nearbyUsers,),
        Center(
          child: SvgPicture.asset(
            'assets/icons/home_icon.svg',
            colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
            height: 100,
          ),
        ),
      ],
    );
  }
}
