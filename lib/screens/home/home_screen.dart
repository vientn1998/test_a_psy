import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shapee_project/app/import_file_common.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        title: Text('Get tested', style: AppTheme.text20Bold,),
        backgroundColor: AppColors.white,
      ),
      body: Center(
        child: Text('Body'),
      ),
      drawer: Drawer(
        child: SafeArea(
          child: Container(
            color: AppColors.primary,
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                ListTile(
                  leading: Icon(Icons.archive_rounded),
                  title: Text('Item 1'),
                  onTap: () {
                    Get.back();
                  },
                ),
                ListTile(
                  title: Text('Item 2'),
                  onTap: () {
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
