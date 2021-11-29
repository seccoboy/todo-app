import 'package:flutter/material.dart';
import 'package:todoapp/classes/BuildBody.dart';
import 'package:todoapp/classes/headerDays.dart';

import '../classes/addTaskButton.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TabBar(
            tabs: [
              Tab(
                text: 'Tasks',
              ),
              Tab(
                text: 'Habits',
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                HeaderDays(),
                BuildBody(),
                AddTaskButton(context: context),
              ],
            ),
            Center(),
          ],
        ),
      ),
    );
  }
}