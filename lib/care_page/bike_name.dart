import 'package:flutter/material.dart';
import 'package:ride_sharing_app/theme/app_text_style.dart';

class BikeName extends StatefulWidget {
  const BikeName({super.key});

  @override
  State<BikeName> createState() => _BikeNameState();
}

class _BikeNameState extends State<BikeName> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color(0xFFF3F2FF),
            width: 3.0,
          )
        )
      ),
      padding: const EdgeInsets.fromLTRB(16, 11.7, 16, 8.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Bike Name',
            style: AppTextStyle.textStyle14c222222w500,
          ),
          Text(
            'Change',
            style: AppTextStyle.textStyle14c584CF4w500,
          ),
        ],
      ),
    );
  }
}
