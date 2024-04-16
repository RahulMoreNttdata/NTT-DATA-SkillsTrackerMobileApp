import 'package:flutter/material.dart';
import '../../modules/dashboard/my_certificates/manage_certificates.dart';
import '../../modules/dashboard/my_profile/my_profile.dart';
import '../constants/color.dart';
import '../constants/common_strings.dart';
import '../constants/icons.dart';

class DrawerWidget extends StatelessWidget {
  BuildContext context;
   DrawerWidget({super.key,required this.context});

  @override
  Widget build(BuildContext context) {
    return Drawer(
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
          commonListTile(context,StringManager.myProfileString , IconsManager.myProfileIcon),//DrawerHeader
          commonListTile(context,StringManager.myProjectString, IconsManager.myProjectIcon),
          commonListTile(context,StringManager.mySkillsString, IconsManager.mySkillsIcon),
          commonListTile(context,StringManager.myCertificatesString, IconsManager.myCertificateIcon),
          commonListTile(context,StringManager.feedbackString, IconsManager.feedbackIcon),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(color: Colors.grey[500],),
          ),
          commonListTile(context,StringManager.manageAccountString, IconsManager.manageAccountIcon),
          commonListTile(context,StringManager.manageProjectsString, IconsManager.manageProjectsIcon),
          commonListTile(context,StringManager.manageSkillGroupsString, IconsManager.manageSkillGroupsIcon),
          commonListTile(context,StringManager.manageCertificatesString, IconsManager.manageCertificatesIcon),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Divider(color: Colors.grey[500],),
          ),
          commonListTile(context,StringManager.searchEmployeeString, IconsManager.searchEmployeeIcon),
          commonListTile(context,StringManager.downloadFeedbackString, IconsManager.downloadFeedbackIcon),

        ],
      ),
    );
  }

  Widget commonListTile(BuildContext context,String text, Icon icon){
    return ListTile(
      leading: icon,
      title:  Text(text),
      onTap: () {
        if(text==' My Profile'){
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const MyProfile()),
          );
        }else if(text==' Manage certificates '){
          print(text);
          Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ManageCertificates()),
          );
        }

      },
    );
  }
}
