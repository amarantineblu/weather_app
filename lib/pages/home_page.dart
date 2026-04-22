// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:weather_app/utils/constants/colors.dart';
// ignore: unused_import
import 'package:weather_app/utils/theme/theme.dart';
import 'package:weather_app/utils/widgets/reusable_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor:  ,
        body: SingleChildScrollView(
          padding: EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 180,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (context, index) => ReusableCard(),
                  scrollDirection: Axis.horizontal,
                  // shrinkWrap: true,
                ),
              ),
              SizedBox(height: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'News Weather Details',
                    style: Theme.of(context).textTheme.headlineSmall,
                    textAlign: TextAlign.left,
                  ),
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    color: TColors.primaryColor,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(16),
                              topRight: Radius.circular(16),
                            ),
                            image: DecorationImage(
                              image: AssetImage(
                                "images/tropical_storm.jpeg",
                              ), // your header image
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              child: Column(
                                children: [
                                  Icon(Icons.water_drop, color: Colors.white),
                                  Text(
                                    'Humidity',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(color: Colors.white),
                                  ),
                                  Text(
                                    '80%',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                children: [
                                  Icon(Icons.air, color: Colors.white),
                                  Text(
                                    'Wind Speed',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium
                                        ?.copyWith(color: Colors.white),
                                  ),
                                  Text(
                                    '15 km/h',
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineMedium
                                        ?.copyWith(color: Colors.white),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Calendar',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    // height: 100,
                    width: double.infinity,
                    // color: TColors.backgroundColor,
                    child: Column(
                      children: [
                        ListTile(
                          tileColor: TColors.primaryColor,
                          leading: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Monday, 12th June',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          subtitle: Text(
                            'Sunny with a chance of rain',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.white70),
                          ),
                        ),
                        SizedBox(height: 4),
                        ListTile(
                          tileColor: TColors.primaryColor,
                          leading: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Tuesday, 13th June',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          subtitle: Text(
                            'Cloudy with light showers',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.white70),
                          ),
                        ),
                        SizedBox(height: 4),
                        ListTile(
                          tileColor: TColors.primaryColor,
                          leading: Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Wednesday, 14th June',
                            style: Theme.of(context).textTheme.bodyMedium
                                ?.copyWith(color: Colors.white),
                          ),
                          subtitle: Text(
                            'Partly cloudy with a chance of thunderstorms',
                            style: Theme.of(context).textTheme.bodySmall
                                ?.copyWith(color: Colors.white70),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
