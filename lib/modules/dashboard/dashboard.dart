import 'package:flutter/material.dart';

import 'my_certificates/my_certificates.dart';
import 'my_profile/my_profile.dart';
import 'my_projects/my_projects.dart';
import 'my_skills/my_skills.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int pageIndex = 0;
  final pages = [
     const MyProfile(),
     const My_Projects(),
     const MySkills(),
     const MyCertificate(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
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
                color: Colors.indigo,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.indigo),
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
            commonListTile(' My Profile ', Icon(Icons.person)),//DrawerHeader
            commonListTile(' My projects ', Icon(Icons.menu_book)),
            commonListTile(' My Skills ', Icon(Icons.settings_applications)),
            commonListTile(' My certificates ', Icon(Icons.pages)),
            commonListTile(' Feedback ', Icon(Icons.feedback)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(color: Colors.grey[500],),
            ),
            commonListTile(' Manage account ', Icon(Icons.settings_suggest_outlined)),
            commonListTile(' Manage projects ', Icon(Icons.shopping_bag_outlined)),
            commonListTile(' Manage skill groups ', Icon(Icons.people)),
            commonListTile(' Manage certificates ', Icon(Icons.fact_check_sharp)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Divider(color: Colors.grey[500],),
            ),
            commonListTile('Search employee', Icon(Icons.search)),
            commonListTile('Download feedback', Icon(Icons.download)),

          ],
        ),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon:  Icon(
                Icons.person,
                color: Colors.grey[700],
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon:  Icon(
                Icons.menu_book,
                color: Colors.grey[700],
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon:   Icon(
                Icons.settings_applications,
                color: Colors.grey[700],
                size: 35,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              icon: Icon(
                Icons.feedback,
                color: Colors.grey[700],
                size: 35,
              ),
            ),
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
    Navigator.pop(context);
  },
);
  }
}

