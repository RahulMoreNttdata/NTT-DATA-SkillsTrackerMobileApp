import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skills_tracker_mobile_app/core/constants/common_strings.dart';
import '../../../core/utils/cardWidget.dart';
import '../../../core/utils/drawerWidget.dart';

class ManageCertificates extends StatefulWidget {
  const ManageCertificates({super.key});

  @override
  State<ManageCertificates> createState() => _ManageCertificatesState();
}

class _ManageCertificatesState extends State<ManageCertificates> {

  List<String> manageCertificateList=[
    "Agilityhealth-Certified AgilityHealth Facilitator\n04/03/2023",
    "AI closed Loop Management Architecture Fundamentals",
    "AI operations (AIOps) Fundamentals",
    "APMG - AgileBA (Agile Business Analysis)",
    "APMG - AgileDS Foundation",
    "APMG - AgileDS Practitioner",
    "APMG - AgilePM for Scrum",
    "APMG - AgilePM Foundation",
    "APMG - AgilePM Practitioner",
    "APMG - Agile Programme Management (AgilePgM)"
  ];

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
            StringManager.certificateTitleString,
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
        body: CardWidget(manageCertificateList: manageCertificateList,),
      ),
    );
  }

  // Widget commonWidgetDivider(){
  //   return Padding(
  //     padding: const EdgeInsets.symmetric(horizontal: 0.0),
  //     child: Divider(color: Colors.grey[500],),
  //   );
  // }
  //
  // Widget certificatesDetailsUI(String certificateName){
  //   return  Padding(
  //     padding: const EdgeInsets.symmetric(vertical: 5.0,horizontal: 4.0),
  //     child: Row(
  //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //       children: [
  //         Expanded(
  //           flex: 4,
  //           child: Text(certificateName,style: TextStyle(
  //             fontSize: 14,
  //             // overflow: TextOverflow.ellipsis
  //
  //           ),),
  //         ),
  //         GestureDetector(
  //             onTap: (){
  //
  //             },
  //             child: Expanded(
  //                 flex: 1,
  //                 child: Icon(Icons.edit,color: ColorManager.lightBlue,))),
  //         // Row(
  //         //   children: [
  //         //     Icon(Icons.edit,color: ColorManager.lightBlue,),
  //         //     Icon(Icons.delete,color: Colors.red,),
  //         //   ],
  //         // )
  //       ],
  //     ),
  //   );
  // }
}
