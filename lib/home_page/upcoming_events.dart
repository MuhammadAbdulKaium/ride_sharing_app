import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ride_sharing_app/extensions/context_extensions.dart';
import 'package:ride_sharing_app/theme/app_text_style.dart';

class UpcomingEvents extends StatefulWidget {
  final List<Map<String, String>> upcomingEvents;
  const UpcomingEvents({
    super.key,
    required this.upcomingEvents,
  });

  @override
  State<UpcomingEvents> createState() => _UpcomingEventsState();
}

class _UpcomingEventsState extends State<UpcomingEvents> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming Events', style: AppTextStyle.textStyle16c222222w600),
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
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SizedBox(
                height: context.screenWidthUnitDesignPerspective * 142,
                child: ListView.builder(
                  padding: const EdgeInsets.fromLTRB(16, 16, 0, 0),
                  itemCount: widget.upcomingEvents.length,
                  physics: BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final Map<String, String> event = widget.upcomingEvents[index];
                    return Padding(
                      padding: EdgeInsets.only(right: context.screenWidthUnitDesignPerspective * 7.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: context.screenWidthUnitDesignPerspective * 145,
                                height: context.screenWidthUnitDesignPerspective * 93.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(5), // Optional rounded corners
                                  child: Image.asset(
                                    event['image'] ?? 'assets/images/event1.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 7,),
                          Text(event['name'] ?? '', style: AppTextStyle.textStyle14c666666w400),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
