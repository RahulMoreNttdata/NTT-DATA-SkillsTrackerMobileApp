import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants/color.dart';
import '../../../core/constants/common_strings.dart';

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
        backgroundColor: ColorManager.backgroundLightGrey,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.grey,

            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),

          title: Text(
            StringManager.titleString,
            style: TextStyle(
              color:Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
              child: Container(
                color: ColorManager.lightBlue,
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_alarms_rounded),
                        SizedBox(width: 5,),
                        Text(
                          " Profile completion",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 30.0),
                      child: Text(
                        "* 2 more Projects recommended to complete your profile",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 30.0),
                      child: Text(
                        "* 3 more skills recommended to any of your projects to complete your profile",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Text("Aneek Patra", style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
              child: Container(
                color: Colors.white,
                child: const Column(
                  children: [
                    Row(
                      children: [
                        Icon(Icons.access_alarms_rounded),
                        SizedBox(width: 5,),
                        Text(
                          " Profile completion",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 30.0),
                      child: Text(
                        "* 2 more Projects recommended to complete your profile",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: 30.0),
                      child: Text(
                        "* 3 more skills recommended to any of your projects to complete your profile",
                        style: TextStyle(
                          fontSize: 16,
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
