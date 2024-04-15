import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:skills_tracker_mobile_app/core/constants/color.dart';
import '../../core/constants/common_strings.dart';
import '../../core/constants/icons.dart';
import 'my_profile/my_profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: ColorManager.appTheme,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: ColorManager.appTheme),
                // currentAccountPictureSize: Size.square(50),
                // currentAccountPicture: CircleAvatar(
                //   backgroundColor: Colors.white,
                //   child: Text(
                //     "A",
                //     style: TextStyle(fontSize: 30.0, color: Colors.blue),
                //   ), //Text
                // ), //circleAvatar
                accountName: Text(
                  "Name",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("sample@gmail.com"),

              ), //UserAccountDrawerHeader
            ),
            commonListTile(StringManager.myProfileString , IconsManager.myProfileIcon),//DrawerHeader
            commonListTile(StringManager.myProjectString, IconsManager.myProjectIcon),
            commonListTile(StringManager.mySkillsString, IconsManager.mySkillsIcon),
            commonListTile(StringManager.myCertificatesString, IconsManager.myCertificateIcon),
            commonListTile(StringManager.feedbackString, IconsManager.feedbackIcon),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(color: Colors.grey[500],),
            ),
            commonListTile(StringManager.manageAccountString, IconsManager.manageAccountIcon),
            commonListTile(StringManager.manageProjectsString, IconsManager.manageProjectsIcon),
            commonListTile(StringManager.manageSkillGroupsString, IconsManager.manageSkillGroupsIcon),
            commonListTile(StringManager.manageCertificatesString, IconsManager.manageCertificatesIcon),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(color: Colors.grey[500],),
            ),
            commonListTile(StringManager.searchEmployeeString, IconsManager.searchEmployeeIcon),
            commonListTile(StringManager.downloadFeedbackString, IconsManager.downloadFeedbackIcon),

          ],
        ),
      ),
    );
  }

  Widget commonListTile(String text, Icon icon){
  return ListTile(
        leading: icon,
        title:  Text(text),
        onTap: () {
          if(text==' My Profile '){
            print("my profile");
            Navigator.pop(context);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyProfile()),
            );
          }

  },
);
  }
}

