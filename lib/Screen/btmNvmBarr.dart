// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:task_manezer_app/Screen/BtmNvmBarPage/Cancelled.dart';
import 'package:task_manezer_app/Screen/BtmNvmBarPage/Complete.dart';
import 'package:task_manezer_app/Screen/BtmNvmBarPage/NewTask.dart';
import 'package:task_manezer_app/Screen/BtmNvmBarPage/progress.dart';
import 'package:task_manezer_app/Widget/colors.dart';

class BtmNvmBarr extends StatefulWidget {
  BtmNvmBarr({super.key});

  @override
  State<BtmNvmBarr> createState() => _BtmNvmBarrState();
}

class _BtmNvmBarrState extends State<BtmNvmBarr> {
  var currentIndex = 0;
  final _page = [
    NewTaskPage(),
    CompletePage(),
    CancelledPage(),
    ProgressPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Colors.black,
        selectedLabelStyle: TextStyle(color: Colors.cyan),
        unselectedLabelStyle: TextStyle(color: Colors.cyan),
        showSelectedLabels: true, showUnselectedLabels: true,

        currentIndex: currentIndex,
        elevation: 5,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        enableFeedback: true,
        items: [
          BottomNavigationBarItem(
              backgroundColor: mainColor,
              icon: Icon(
                Icons.new_releases,
              ),
              label: "NewTask"),
          BottomNavigationBarItem(
              backgroundColor: mainColor,
              icon: Icon(Icons.favorite),
              label: "Complete"),
          BottomNavigationBarItem(
            backgroundColor: mainColor,
            icon: Icon(Icons.cancel),
            label: "Cancelled",
          ),
          BottomNavigationBarItem(
            backgroundColor: mainColor,
            label: "Progress",
            icon: Icon(
              Icons.local_dining,
            ),
          ),
        ],
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: _page[currentIndex],
    );
  }
}
