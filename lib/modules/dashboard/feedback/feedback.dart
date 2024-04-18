import 'dart:core';

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:skills_tracker_mobile_app/core/utils/drawerWidget.dart';
import '../../../core/constants/color.dart';
import '../../../core/constants/common_strings.dart';

class MyFeedback extends StatefulWidget {
  const MyFeedback({super.key});
  @override
  State<MyFeedback> createState() => _MyFeedbackState();
}

class _MyFeedbackState extends State<MyFeedback> {
  var feedbackCategories = [
    'Select Category',
    'Report a Bug',
    'Feature Request',
    'General Feedback',
    'Missing Account/Project',
    'Missing Skill',
    'Missing Certification',
  ];
  String dropdownValue = 'Select Category';

  bool isButtonActive = false;
  late TextEditingController additionalFeedback;
  late TextEditingController subjectcontroller;

  @override
  void initState() {
    super.initState();

    additionalFeedback = TextEditingController();
    additionalFeedback.addListener(() {
      final isButtonActive = additionalFeedback.text.isNotEmpty;
      setState(() => this.isButtonActive = isButtonActive);
    });

    subjectcontroller = TextEditingController();
    subjectcontroller.addListener(() {
      final isButtonActive = subjectcontroller.text.isNotEmpty;
      setState(() => this.isButtonActive = isButtonActive);
    });
  }

  @override
  void dispose() {
    additionalFeedback.dispose();
    subjectcontroller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: ColorManager.backgroundLightGrey,
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(
              statusBarColor: Colors.grey,
              statusBarIconBrightness: Brightness.dark,
              statusBarBrightness: Brightness.light,
            ),
            leading: Builder(
              builder: (context) => IconButton(
                icon: new Icon(
                  Icons.menu,
                  color: Colors.white,
                ),
                onPressed: () => Scaffold.of(context).openDrawer(),
              ),
            ),
            title: const Text(
              StringManager.feedbackString,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            backgroundColor: Theme.of(context).primaryColor,
          ),
          drawer: DrawerWidget(
            context: context,
          ),
          body: SingleChildScrollView(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 25.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Name: ",
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "Aneek Patra ",
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Email: ",
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
                        ),
                        Text(
                          "sample@gmail.com",
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 50,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Subject*',
                        ),
                        controller: subjectcontroller,
                      ),
                    ),
                    // DropdownMenu<String>(
                    //   label: const Text('Feedback Category*'),
                    //   onSelected: (String? value) {
                    //     setState(() {
                    //       dropdownValue = value!;
                    //     });
                    //   },
                    //   dropdownMenuEntries: feedbackCategories
                    //       .map<DropdownMenuEntry<String>>((String value) {
                    //     return DropdownMenuEntry(value: value, label: value);
                    //   }).toList(),
                    // ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 60,
                      child: DropdownSearch<String>(
                        //to show search box
                        // showSearchBox: true,
                        // showSelectedItem: true,
                        //list of dropdown items
                        items: [
                          "India",
                          "USA",
                          "Brazil",
                          "Canada",
                          "Australia",
                          "Singapore"
                        ],
                        // label: "Country",
                        onChanged: print,
                        //show selected item
                        selectedItem: "",
                      ),
                    ),

                    SizedBox(
                      width: 370,
                      child: TextField(
                        maxLines: 5,
                        maxLength: 1000,
                        decoration: InputDecoration(
                          alignLabelWithHint: true,
                          border: OutlineInputBorder(),
                          labelText: 'Additional Comments*',
                        ),
                        controller: additionalFeedback,
                      ),
                    ),
                    Text(
                      'Rate our app:',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                    RatingBar(
                      initialRating: 0,
                      itemSize: 30.0,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      itemCount: 5,
                      glowColor: Colors.amber,
                      ratingWidget: RatingWidget(
                          full: const Icon(
                            Icons.star_outlined,
                            color: Colors.amber,
                          ),
                          empty: const Icon(
                            Icons.star_border,
                            color: Colors.grey,
                          ),
                          half: const Icon(
                            Icons.star_half_outlined,
                            color: Colors.amber,
                          )),
                      itemPadding: const EdgeInsets.symmetric(horizontal: 4.0),
                      onRatingUpdate: (rating) {
                        print(rating);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.appTheme,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // <-- Radius
                            ),
                          ),
                          child: const Text(
                            'CANCEL',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),

                        ElevatedButton(
                            onPressed: isButtonActive
                                ? () {
                              setState(() => isButtonActive = false);
                              // controller.clear();
                              subjectcontroller.clear();
                              additionalFeedback.clear();
                            }
                                : null,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorManager.appTheme,
                              shape: RoundedRectangleBorder(
                                borderRadius:
                                BorderRadius.circular(5), // <-- Radius
                              ),
                            ),
                            child: Text(
                              'SUBMIT FEEDBACK',
                              style: TextStyle(color: Colors.white, fontSize: 15),
                            )),
                        // ),
                      ],
                    )
                  ],
                ),
              ))),
    );
  }
}