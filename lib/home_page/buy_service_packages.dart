import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_sharing_app/theme/app_text_style.dart';

class BuyServicePackages extends StatefulWidget {
  final List<Map<String, String>> servicePackages;
  const BuyServicePackages({
    super.key,
    required this.servicePackages,
  });

  @override
  State<BuyServicePackages> createState() => _BuyServicePackagesState();
}

class _BuyServicePackagesState extends State<BuyServicePackages> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 13),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Buy Service Packages', style: AppTextStyle.textStyle16c222222w600),
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
        GridView.count(
          crossAxisCount: 2,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
          children: widget.servicePackages.take(4).map((service) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(service['image'] ?? 'assets/images/product1.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12.4, 0, 7),
                  child: Text(service['name'] ?? '', style: AppTextStyle.textStyle14c666666w500,),
                ),
                Row(
                  children: [
                    Text(service['currentPrice'] ?? '0.0', style: AppTextStyle.textStyle16c222222w600,),
                    SizedBox(width: 6,),
                    Text(service['oldPrice'] ?? '0.0', style: AppTextStyle.textStyle12c888888w400,),
                    SizedBox(width: 6,),
                    Text(service['offer'] ?? '0.0', style: AppTextStyle.textStyle12c584CF4w400,),
                  ],
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
