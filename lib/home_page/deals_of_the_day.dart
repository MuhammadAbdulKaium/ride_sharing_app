import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_sharing_app/theme/app_text_style.dart';

class DealsOfTheDay extends StatefulWidget {
  final List<Map<String, String>> dealsOfTheDay;
  const DealsOfTheDay({
    super.key,
    required this.dealsOfTheDay
  });

  @override
  State<DealsOfTheDay> createState() => _DealsOfTheDayState();
}

class _DealsOfTheDayState extends State<DealsOfTheDay> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 21, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Deals of the Day', style: AppTextStyle.textStyle16c222222w600),
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
          padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 0.78,
          children: widget.dealsOfTheDay.take(2).map((item) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(item['image'] ?? 'assets/images/product1.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12.4, 0, 7),
                  child: Text(item['name'] ?? '', style: AppTextStyle.textStyle14c666666w500,),
                ),
                Row(
                  children: [
                    Text(item['currentPrice'] ?? '0.0', style: AppTextStyle.textStyle16c222222w600,),
                    SizedBox(width: 6,),
                    Text(item['oldPrice'] ?? '0.0', style: AppTextStyle.textStyle12c888888w400,),
                    SizedBox(width: 6,),
                    Text(item['offer'] ?? '0.0', style: AppTextStyle.textStyle12c584CF4w400,),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    SizedBox(height: 20, child: Image.asset('assets/images/star.png')),
                    SizedBox(width: 4.5,),
                    Text(item['rating'] ?? '0.0', style: AppTextStyle.textStyle14c888888w500,),
                  ],
                )
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
