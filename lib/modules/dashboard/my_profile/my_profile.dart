import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 10.0),
              child: Container(
                color: ColorManager.lightBlue,
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_alarms_rounded),
                        Text(
                          " Profile completion",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 30.0),
                      child: Text(
                        "2 more Projects recommended to complete your profile",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 30.0),
                      child: Text(
                        "3 more skills recommended to any of your projects to complete your profile",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
