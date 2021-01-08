import 'package:flutter/material.dart';

class FindJobs extends StatefulWidget {
  @override
  _FindJobsState createState() => new _FindJobsState();
}

class _FindJobsState extends State<FindJobs> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("FIND JOBS"),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanfindjobs');
              },
            ),
            new ListTile(
              title: new Text("Find Jobs"),
            ),
            new ListTile(
              title: new Text("Apply"),
            ),
            new ListTile(
              title: new Text("Profile"),
            ),
            new ListTile(
              title: new Text("Register"),
            ),
            new ListTile(
              title: new Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
