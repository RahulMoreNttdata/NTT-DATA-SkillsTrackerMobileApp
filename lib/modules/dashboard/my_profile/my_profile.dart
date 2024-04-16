import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants/color.dart';
import '../../../core/constants/common_strings.dart';

import '../../../core/utils/drawerWidget.dart';

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
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor: Colors.grey,

            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          leading:  Builder(
            builder: (context) => IconButton(
              icon: new Icon(Icons.menu,color: Colors.white,),
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Text(
            "Skills tracker 2.1",
            style: TextStyle(
              color:Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          centerTitle: true,
          backgroundColor: Theme.of(context).primaryColor,
        ),
        drawer:DrawerWidget(context: context,),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15.0),
          child: ListView(
            children: [
              cardWidget(" Profile completion",
                  "* 2 more Projects recommended to complete your profile",
                  "* 3 more skills recommended to any of your projects to complete your profile"),
              Text("Aneek Patra", style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0),
                child: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15.0),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                                backgroundColor: ColorManager.appTheme,
                                child: Icon(Icons.menu,color: Colors.white,)),
                            SizedBox(width: 5,),
                            Text(
                              " Add 1st NON-NTT DATA",
                              style: TextStyle(
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: 50.0),
                          child: Text(
                            "project",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ),



                      ],
                    ),
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(
                      color: ColorManager.appTheme, // Set border color
                      width: 1.0),   // Set border width
                  borderRadius: BorderRadius.all(
                      Radius.circular(10.0)), // Set rounded corner radius
                  // boxShadow: [BoxShadow(blurRadius: 10,color: Colors.black,offset: Offset(1,3))] // Make rounded corner of border
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      TextField(
                          decoration: InputDecoration(
                            labelText: "Preferred name",
                            // hintText: "Inanimate hint",
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(0.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          )
                      ),
                      SizedBox(height: 20,),
                      TextField(
                          decoration: InputDecoration(
                            labelText: "Pronouns",
                            // hintText: "Inanimate hint",
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(0.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          )
                      ),
                      SizedBox(height: 20,),
                      TextField(
                          decoration: InputDecoration(
                            labelText: "Job title * ",
                            // hintText: "Inanimate hint",
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(0.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          )
                      ),
                      SizedBox(height: 20,),
                      TextFormField(
                          maxLines: 5,
                          maxLength: 1000,
                          decoration: InputDecoration(
                            labelText: "Profile summary ",
                            alignLabelWithHint: true,
                            // hintText: "Inanimate hint",
                            border: new OutlineInputBorder(
                              borderRadius: const BorderRadius.all(
                                const Radius.circular(0.0),
                              ),
                              borderSide: new BorderSide(
                                color: Colors.black,
                                width: 1.0,
                              ),
                            ),
                          )
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text('Edit',style: TextStyle(color: Colors.white),),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: ColorManager.appTheme,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5), // <-- Radius
                          ),

                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Stack(
                children: [

                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            Align(
                              alignment: Alignment.topRight,
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Text('+ ADD NTT DATA PROJECT',style: TextStyle(color: Colors.white),),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: ColorManager.appTheme,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5), // <-- Radius
                                  ),

                                ),
                              ),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              " NTT DATA Projects",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 10,),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Container(
                                width: 250,
                                margin: const EdgeInsets.only(bottom: 6.0), //Same as `blurRadius` i guess
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.0),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey,
                                      offset: Offset(0.0, 1.0), //(x,y)
                                      blurRadius: 6.0,
                                    ),
                                  ],
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("NTT DATA",style: TextStyle(fontSize: 16.0),),
                                          Row(
                                            children: [
                                              Icon(Icons.remove_red_eye,color: ColorManager.lightBlue,),
                                              SizedBox(width: 10.0,),
                                              Icon(Icons.delete,color: Colors.red,)
                                            ],
                                          ),
                                        ],
                                      ),
                                      commonWidgetDivider(),
                                      Text("AVON",style: TextStyle(fontSize: 16.0,fontWeight: FontWeight.bold),),
                                      Text("New Rep Journey",style: TextStyle(fontSize: 16.0),),
                                      Text("Senior Frontend Developer",style: TextStyle(color:Colors.grey[700],fontSize: 16.0),),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(
                                              height: 25,
                                              width: 70,
                                              color: Colors.grey[300],
                                              child: Text(' React.js ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                          ClipRRect(
                                            borderRadius: BorderRadius.circular(5),
                                            child: Container(

                                              height: 25,
                                              width: 80,
                                              color: Colors.grey[300],
                                              child: Text(' Webpack ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                            ),
                                          ),
                                          SizedBox(width: 10,),
                                        ],
                                      ),
                                      SizedBox(height: 5,),
                                      ClipRRect(
                                        borderRadius: BorderRadius.circular(5),
                                        child: Container(
                                          height: 25,
                                          width: 120,
                                          color: Colors.grey[300],
                                          child: Text(' Agile coaching ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
                                        ),
                                      )

                                    ],
                                  ),
                                ),
                              ),
                            ),


                          ],
                        ),
                      ),
                    ),
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.elliptical(15, 15),
                      ),
                    ),
                    height: 20,
                    width: 90,
                    child: Text("  1 Project",style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ],
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 15.0),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 0.0), //Same as `blurRadius` i guess
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Skills",style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),

                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Skill" ,style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("Duration(months)", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                        ),
                        commonWidgetDivider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Agile coaching" ,style: TextStyle(
                                fontSize: 16,

                              ),),
                              Text("12", style: TextStyle(
                                fontSize: 16,

                              ),),
                            ],
                          ),
                        ),
                        commonWidgetDivider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("React.js" ,style: TextStyle(
                                fontSize: 16,

                              ),),
                              Text("12", style: TextStyle(
                                fontSize: 16,
                              ),),
                            ],
                          ),
                        ),
                        commonWidgetDivider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("React.js" ,style: TextStyle(
                                fontSize: 16,

                              ),),
                              Text("12", style: TextStyle(
                                fontSize: 16,
                              ),),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 0.0,vertical: 15.0),
                child: Container(
                  margin: const EdgeInsets.only(bottom: 0.0), //Same as `blurRadius` i guess
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        offset: Offset(0.0, 1.0), //(x,y)
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [


                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Certificates",style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                            ElevatedButton(
                              onPressed: () {},
                              child: Text('+ ADD CERTIFICATION',style: TextStyle(color: Colors.white),),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: ColorManager.appTheme,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5), // <-- Radius
                                ),
                              ),
                            ),
                          ],
                        ),


                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Certification" ,style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),

                              Text("", style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),),
                            ],
                          ),
                        ),
                        commonWidgetDivider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                //width:100,
                                child: Text("AI operations(AIOps)Fundamentals\n07/04/2023" ,style: TextStyle(
                                  fontSize: 16,
                                  // overflow: TextOverflow.ellipsis

                                ),),
                              ),
                              GestureDetector(
                                  onTap: (){

                                  },
                                  child: Icon(Icons.more_horiz,)),
                              // Row(
                              //   children: [
                              //     Icon(Icons.edit,color: ColorManager.lightBlue,),
                              //     Icon(Icons.delete,color: Colors.red,),
                              //   ],
                              // )
                            ],
                          ),
                        ),
                        commonWidgetDivider(),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width:200,
                                child: Text("Agilityhealth-Certified AgilityHealth Facilitator\n04/03/2023" ,style: TextStyle(
                                  fontSize: 16,
                                  // overflow: TextOverflow.ellipsis

                                ),),
                              ),
                              GestureDetector(
                                  onTap: (){

                                  },
                                  child: Icon(Icons.more_horiz,)),
                              // Row(
                              //   children: [
                              //     Icon(Icons.edit,color: ColorManager.lightBlue,),
                              //     Icon(Icons.delete,color: Colors.red,),
                              //   ],
                              // )
                            ],
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget commonWidgetDivider(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Divider(color: Colors.grey[500],),
    );
  }

  Widget cardWidget(String title, String description1,String description2){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0),
      child: Container(
        color: ColorManager.extraLightBlue,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
          child:  Column(
            children: [
              Row(
                children: [
                  Icon(Icons.access_alarms_rounded),
                  SizedBox(width: 5,),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Padding(
                padding:  EdgeInsets.only(left: 30.0,top: 10.0),
                child: Text(
                 description1,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding:  EdgeInsets.only(left: 30.0),
                child: Text(
                      description2,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
