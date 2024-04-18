import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../core/constants/common_strings.dart';
import '../../../core/utils/cardWidget.dart';
import '../../../core/utils/drawerWidget.dart';

class ManageProjects extends StatefulWidget {
  const ManageProjects({super.key});

  @override
  State<ManageProjects> createState() => _ManageProjectsState();
}

class _ManageProjectsState extends State<ManageProjects> {
  List<String> manageProjectList=[
    "ACCA-MANAGED SERVICES BA\n01/02/2024-29/02/2024",
    "ACCA-MANAGED SERVICES BAU SUPPORT\n12/01/2019-31/01/2025",
    "ACCA-PROJECTS AND TESTING SERVICES\n12/01/2019-12/01/2025",
    "ACCA-SIEMENS - DATA ANALYTICS\n01/01/2024-31/12/2024",
    "ACCA-TEST\n20/03/2024	21/03/2024",
    "ACCA-TEST1\n22/03/2024	23/03/2024",
    "ACCA-TEST3\n22/03/2024	23/03/2024",
    "ACCA-TEST5\n22/03/2024	23/03/2024",
    "ACCA-TEST 6\n22/03/2024	23/03/2024",
    "ACCA-TESTING\n22/03/2024	23/03/2024"
  ];

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
        body: CardWidget(manageCertificateList: manageProjectList,),
      ),
    );
  }
}
