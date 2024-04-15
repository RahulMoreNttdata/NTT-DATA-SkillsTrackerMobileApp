import 'package:flutter/material.dart';

class My_Projects extends StatefulWidget {
  const My_Projects({super.key});

  @override
  State<My_Projects> createState() => _My_ProjectsState();
}

class _My_ProjectsState extends State<My_Projects> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            //    color: Colors.green[900],
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
