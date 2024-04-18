import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import '../../modules/dashboard/manage_projects/edit_project.dart';
import '../constants/color.dart';
import '../constants/common_strings.dart';

class CardWidget extends StatefulWidget {
  List<String> manageCertificateList;
   CardWidget({super.key,required this.manageCertificateList});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.0,vertical: 25.0),
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
            padding:  EdgeInsets.symmetric(vertical: 15.0,horizontal: 15.0),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
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
                    SizedBox(width: 10,),
                    Expanded(
                      flex: 1,
                      child: Container(
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text('ADD',style: TextStyle(color: Colors.white,fontSize: 15),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.appTheme,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // <-- Radius
                            ),

                          ),
                        ),
                      ),
                    )
                  ],
                ),

                Padding(
                  padding:  EdgeInsets.only(top: 20.0,bottom: 10.0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(StringManager.accProjNameString,style: TextStyle(
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

               ListView.builder(
                   scrollDirection: Axis.vertical,
                   shrinkWrap: true,
              itemCount: widget.manageCertificateList.length,
              itemBuilder: (BuildContext context,int index) {
                final item = widget.manageCertificateList[index];
                //      print("${widget.manageCertificateList[index]}");
                // Text("${widget.manageCertificateList[index]}");
                return Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            flex:4,
                            child: Text(item.toString(),
                              style: TextStyle(
                              fontSize: 14,
                              // overflow: TextOverflow.ellipsis

                            ),),
                          ),
                          GestureDetector(
                              onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>
                          EditProject()));
                              },
                              child: Expanded(
                                flex: 1,
                                child: Icon(
                                  Icons.edit, color: ColorManager.lightBlue,),
                              )),

                        ],
                      ),
                    ),
                      Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: Divider(color: Colors.grey[500],),
                )
                  ],
                );

              }
          ),
                // commonWidgetDivider(),
                // certificatesDetailsUI(),
                // commonWidgetDivider(),
                // certificatesDetailsUI(),
                // commonWidgetDivider(),
                // certificatesDetailsUI("AI operations (AIOps) Fundamentals"),
                // commonWidgetDivider(),
                // certificatesDetailsUI("APMG - AgileBA (Agile Business Analysis)"),
                // commonWidgetDivider(),
                // certificatesDetailsUI("APMG - AgileDS Foundation"),
                // commonWidgetDivider(),
                // certificatesDetailsUI("APMG - AgileDS Practitioner"),
                // commonWidgetDivider(),
                // certificatesDetailsUI("APMG - AgilePM for Scrum"),
                // commonWidgetDivider(),
                // certificatesDetailsUI("APMG - AgilePM Foundation"),
                // commonWidgetDivider(),
                // certificatesDetailsUI("APMG - AgilePM Practitioner"),
                // commonWidgetDivider(),
                // certificatesDetailsUI("APMG - Agile Programme Management (AgilePgM)"),
              ],
            ),
          ),
        ),
      ),
    );
  }



  Widget certificatesDetailsUI(){
    return  ListView.builder(
        itemCount: widget.manageCertificateList.length,
        itemBuilder: (BuildContext context,int index) {
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 4.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 4,
                  child: Text(widget.manageCertificateList[index], style: TextStyle(
                    fontSize: 14,
                    // overflow: TextOverflow.ellipsis

                  ),),
                ),
                GestureDetector(
                    onTap: () {

                    },
                    child: Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.edit, color: ColorManager.lightBlue,))),
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
    );
  }
}
