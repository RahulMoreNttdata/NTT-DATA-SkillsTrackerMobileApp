import 'package:flutter/material.dart';

class CommonWidgets{
   commonWidgetDivider(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Divider(color: Colors.grey[500],),
    );
  }
}