import 'package:flutter/material.dart';
import 'package:ride_sharing_app/care_page/bike_name.dart';
import 'package:ride_sharing_app/care_page/care_recommendations.dart';
import 'package:ride_sharing_app/home_page/buy_service_packages.dart';

class CarePage extends StatefulWidget {
  const CarePage({super.key});

  @override
  State<CarePage> createState() => _CarePageState();
}

class _CarePageState extends State<CarePage> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> recommendations = [
      {'image': 'assets/images/care1.png', 'name': 'Spark Plug',},
      {'image': 'assets/images/care2.png', 'name': 'Clutch Shoe',},
      {'image': 'assets/images/care3.png', 'name': 'Hose Fuel',},
    ];
    List<Map<String, String>> servicePackages = [
      {'image': 'assets/images/service1.png', 'name': 'Annual Maintenance', 'currentPrice': '₹ 900', 'oldPrice': '₹ 1,000', 'offer': '10% Off'},
      {'image': 'assets/images/service2.png', 'name': 'Teflon Coating', 'currentPrice': '₹ 1350', 'oldPrice': '₹ 1500', 'offer': '10% Off'},
      {'image': 'assets/images/service3.png', 'name': 'Annual Maintenance', 'currentPrice': '₹ 900', 'oldPrice': '₹ 1,000', 'offer': '10% Off'},
      {'image': 'assets/images/service4.png', 'name': 'Teflon Coating', 'currentPrice': '₹ 1350', 'oldPrice': '₹ 1500', 'offer': '10% Off'},
    ];

    return Column(
      children: [
        BikeName(),
        CareRecommendations(recommendations: recommendations),
        SizedBox(height: 7,),
        BuyServicePackages(servicePackages: servicePackages),
      ],
    );
  }
}
