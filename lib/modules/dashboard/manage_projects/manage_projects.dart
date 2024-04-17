import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants/color.dart';
import '../../../core/constants/common_strings.dart';
import '../../../core/utils/drawerWidget.dart';

class ManageProjects extends StatefulWidget {
  const ManageProjects({super.key});

  @override
  State<ManageProjects> createState() => _ManageProjectsState();
}

class _ManageProjectsState extends State<ManageProjects> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.grey,
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
            StringManager.projectTitleString,
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
          padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 20.0),
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
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
                child: Column(
                  children: [


                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Container(
                            height: 40,
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
                        ),
                        SizedBox(width: 10,),
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text('+ ADD CERTIFICATE',style: TextStyle(color: Colors.white,fontSize: 10),),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorManager.appTheme,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5), // <-- Radius
                              ),

                            ),
                          ),
                        )
                      ],
                    ),
                    //
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(StringManager.accProjNameString ,style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),

                          Text("Actions", style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),),
                        ],
                      ),
                    ),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-MANAGED SERVICES BA"),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-MANAGED SERVICES BAU SUPPORT"),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-PROJECTS AND TESTING SERVICES"),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-SIEMENS - DATA ANALYTICS"),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-TEST"),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-TEST1"),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-TEST3"),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-TEST5"),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-TEST 6"),
                    commonWidgetDivider(),
                    certificatesDetailsUI("ACCA-TESTING"),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget commonWidgetDivider(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      child: Divider(color: Colors.grey[500],),
    );
  }

  Widget certificatesDetailsUI(String accName){
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 4.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Text(accName,style: TextStyle(
              fontSize: 14,
              // overflow: TextOverflow.ellipsis

            ),),
          ),
          GestureDetector(
              onTap: (){

              },
              child: Expanded(
                  flex: 1,
                  child: Icon(Icons.edit,color: ColorManager.lightBlue,))),
          // Row(
          //   children: [
          //     Icon(Icons.edit,color: ColorManager.lightBlue,),
          //     Icon(Icons.delete,color: Colors.red,),
          //   ],
          // )
        ],
      ),
    );
  }
}
