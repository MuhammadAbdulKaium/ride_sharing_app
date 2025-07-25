import 'package:flutter/material.dart';
import 'package:ride_sharing_app/home_page/buy_service_packages.dart';
import 'package:ride_sharing_app/home_page/deals_of_the_day.dart';
import 'package:ride_sharing_app/home_page/nearby_users.dart';
import 'package:ride_sharing_app/home_page/upcoming_events.dart';

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
    List<Map<String, String>> dealsOfTheDay = [
      {'image': 'assets/images/product1.png', 'name': 'Racing Dual Visor Helmet', 'currentPrice': '₹ 4,079', 'oldPrice': '₹ 5,099', 'offer': '20% Off', 'rating': '4.8(212)'},
      {'image': 'assets/images/product2.png', 'name': 'Aerodynamic Helmet', 'currentPrice': '₹ 2,799', 'oldPrice': '₹ 3,499', 'offer': '20% Off', 'rating': '4.5(154)'},
    ];
    List<Map<String, String>> upcomingEvents = [
      {'image': 'assets/images/event1.png', 'name': 'Shimla to Manali'},
      {'image': 'assets/images/event2.png', 'name': 'Goa to Gujarat'},
      {'image': 'assets/images/event3.png', 'name': 'Kashmir Trip'},
    ];
    List<Map<String, String>> servicePackages = [
      {'image': 'assets/images/service1.png', 'name': 'Annual Maintenance', 'currentPrice': '₹ 900', 'oldPrice': '₹ 1,000', 'offer': '10% Off'},
      {'image': 'assets/images/service2.png', 'name': 'Teflon Coating', 'currentPrice': '₹ 1350', 'oldPrice': '₹ 1500', 'offer': '10% Off'},
      {'image': 'assets/images/service3.png', 'name': 'Annual Maintenance', 'currentPrice': '₹ 900', 'oldPrice': '₹ 1,000', 'offer': '10% Off'},
      {'image': 'assets/images/service4.png', 'name': 'Teflon Coating', 'currentPrice': '₹ 1350', 'oldPrice': '₹ 1500', 'offer': '10% Off'},
    ];

    return Column(
      children: [
        NearbyUsers(nearbyUsers: nearbyUsers,),
        DealsOfTheDay(dealsOfTheDay: dealsOfTheDay),
        UpcomingEvents(upcomingEvents: upcomingEvents),
        SizedBox(height: 16.2,),
        BuyServicePackages(servicePackages: servicePackages),
      ],
    );
  }
}
