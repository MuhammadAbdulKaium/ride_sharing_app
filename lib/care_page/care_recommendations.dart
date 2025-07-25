import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_sharing_app/theme/app_text_style.dart';

class CareRecommendations extends StatefulWidget {
  final List<Map<String, String>> recommendations;

  const CareRecommendations({super.key, required this.recommendations});

  @override
  State<CareRecommendations> createState() => _CareRecommendationsState();
}

class _CareRecommendationsState extends State<CareRecommendations> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16.2, 16, 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Care Recommendations',
                style: AppTextStyle.textStyle16c222222w600,
              ),
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
          crossAxisCount: 3,
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          crossAxisSpacing: 15,
          mainAxisSpacing: 10,
          childAspectRatio: 0.8,
          children: widget.recommendations.take(3).map((recommendation) {
            return Column(
              children: [
                SizedBox(
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset(
                        recommendation['image'] ?? 'assets/images/product1.png',
                        fit: BoxFit.cover,
                      )
                  )
                ),
                // Image.asset(recommendation['image'] ?? 'assets/images/product1.png'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 12.4, 0, 7),
                  child: Text(recommendation['name'] ?? '', style: AppTextStyle.textStyle14c666666w500,),
                ),
              ],
            );
          }).toList(),
        ),
      ],
    );
  }
}
