import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        'assets/icons/community_icon.svg',
        colorFilter: ColorFilter.mode(Colors.blue, BlendMode.srcIn),
        height: 100,
      ),
    );
  }
}
