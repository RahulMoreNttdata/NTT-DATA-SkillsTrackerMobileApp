import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../core/constants/color.dart';
import '../../../core/constants/common_strings.dart';

class EditProject extends StatefulWidget {
  const EditProject({super.key});

  @override
  State<EditProject> createState() => _EditProjectState();
}

class _EditProjectState extends State<EditProject> {
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

            title: Text(
              StringManager.editProjectTitleString,
              style: TextStyle(
                color:Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            centerTitle: true,
            backgroundColor: Theme.of(context).primaryColor,
          ),
        body: Padding(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Project Details",style: TextStyle(fontSize: 20.0),),
                    SizedBox(height: 20,),
                    DropdownSearch<String>(
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
                    SizedBox(height: 20,),
                    DropdownSearch<String>(
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
                    SizedBox(height: 20,),
                    TextField(
                        decoration: InputDecoration(
                          labelText: "Project Role",
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
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Add New skill",style: TextStyle(fontSize: 20.0),),
                            SizedBox(height: 20,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
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
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: 48,
                                    child: TextField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                          labelText: "Duration",
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
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        height: 40,
                                        child: Icon(Icons.add))),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.grey[100],
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Existing skills",style: TextStyle(fontSize: 20.0),),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
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
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: 48,
                                    child: TextField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                          labelText: "Duration",
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
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        height: 40,
                                        child: Icon(Icons.delete,color: Colors.red,))),
                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
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
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: 48,
                                    child: TextField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                          labelText: "Duration",
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
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        height: 40,
                                        child: Icon(Icons.delete,color: Colors.red,))),

                              ],
                            ),
                            SizedBox(height: 10,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  flex: 4,
                                  child: Container(
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
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    height: 48,
                                    child: TextField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                                        decoration: InputDecoration(
                                          labelText: "Duration",
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
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                    flex: 1,
                                    child: Container(
                                        height: 40,
                                        child: Icon(Icons.delete,color: Colors.red,))),

                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Cancel',style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.appTheme,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // <-- Radius
                            ),

                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text('Save',style: TextStyle(color: Colors.white),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: ColorManager.appTheme,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5), // <-- Radius
                            ),

                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 10.0,),
                  ],
                ),
              ),
            ),
          ),
        )
      ),
    );
  }
}
