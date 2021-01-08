import 'package:flutter/material.dart';
// import './findjobs.dart';

void main() {
  runApp(
      new MaterialApp(home: new Halamanhome(), routes: <String, WidgetBuilder>{
    '/Halamanhome': (BuildContext context) => new Halamanhome(),
    '/Halamanfindjobs': (BuildContext context) => new Halamanfindjobs(),
    '/Halamanregister': (BuildContext context) => new Halamanregister(),
    '/Halamanlogin': (BuildContext context) => new Halamanlogin(),
  }));
}

class Halamanhome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text("JOBMARKET"),
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          new Container(
            child: new Column(
              children: <Widget>[
                new Image.asset("images/future_job.png"),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new Text(
                  "Find Your Dream Job",
                  style: new TextStyle(fontSize: 30.0),
                ),
                new Text(
                  "With Us",
                  style: new TextStyle(fontSize: 30.0),
                ),
                new Text(
                  "And Bright Your Future",
                  style: new TextStyle(fontSize: 30.0),
                ),
                new Padding(
                  padding: new EdgeInsets.all(15.0),
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.all(40.0),
                    ),
                    FloatingActionButton.extended(
                      heroTag: 'findjobs',
                      backgroundColor: Colors.blue[600],
                      foregroundColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/Halamanfindjobs');
                      },
                      label: Text('FIND JOB'),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(10.0),
                    ),
                    FloatingActionButton.extended(
                      heroTag: 'register',
                      backgroundColor: Colors.blue[600],
                      foregroundColor: Colors.white,
                      onPressed: () {
                        Navigator.pushNamed(context, '/Halamanregister');
                      },
                      label: Text('REGISTER'),
                    ),
                  ],
                ),

                // new RaisedButton(
                //   child:
                //       new Text("FIND JOB", style: TextStyle(color: Colors.white)),
                //   color: Colors.blue[900],
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                // ),
                // new RaisedButton(
                //   child:
                //       new Text("REGISTER", style: TextStyle(color: Colors.white)),
                //   color: Colors.blue[900],
                //   onPressed: () {
                //     Navigator.pop(context);
                //   },
                // ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButton: new FloatingActionButton(
      //   child: new Text("FIND JOBS"),
      //   onPressed: () => Navigator.of(context).push(new MaterialPageRoute(
      //     builder: (BuildContext context) => new FindJobs(),
      //   )),
      // ),
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        child: Text("© 2020"),
        padding: new EdgeInsets.all(10.0),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanhome');
              },
            ),
            new ListTile(
              title: new Text("Find Jobs"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanfindjobs');
              },
            ),
            new ListTile(
              title: new Text("Apply"),
            ),
            new ListTile(
              title: new Text("Profile"),
            ),
            new ListTile(
              title: new Text("Register"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanregister');
              },
            ),
            new ListTile(
              title: new Text("Login"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanlogin');
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Halamanfindjobs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text("FIND JOBS"),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        child: Text("© 2020"),
        padding: new EdgeInsets.all(10.0),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanhome');
              },
            ),
            new ListTile(
              title: new Text("Find Jobs"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanfindjobs');
              },
            ),
            new ListTile(
              title: new Text("Apply"),
            ),
            new ListTile(
              title: new Text("Profile"),
            ),
            new ListTile(
              title: new Text("Register"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanregister');
              },
            ),
            new ListTile(
              title: new Text("Login"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanlogin');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  decoration: new InputDecoration(
                      suffixIcon: Icon(
                        Icons.search,
                      ),
                      hintText: "Search Keyword",
                      labelText: "Search Keyword",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      suffixIcon: Icon(Icons.map),
                      hintText: "Location",
                      labelText: "Location",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new TextField(
                  decoration: new InputDecoration(
                      suffixIcon: Icon(Icons.account_box),
                      hintText: "Jabatan",
                      labelText: "Jabatan",
                      border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(10.0))),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                FloatingActionButton.extended(
                  heroTag: 'seacrh',
                  backgroundColor: Colors.blue[600],
                  foregroundColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  label: Text('SEARCH'),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new Image.asset("images/found.png"),
                new Padding(
                  padding: new EdgeInsets.all(5.0),
                ),
                new Text("Found 16 Jobs"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Halamanregister extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text("REGISTER"),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        child: Text("© 2020"),
        padding: new EdgeInsets.all(10.0),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanhome');
              },
            ),
            new ListTile(
              title: new Text("Find Jobs"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanfindjobs');
              },
            ),
            new ListTile(
              title: new Text("Apply"),
            ),
            new ListTile(
              title: new Text("Profile"),
            ),
            new ListTile(
              title: new Text("Register"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanregister');
              },
            ),
            new ListTile(
              title: new Text("Login"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanlogin');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new Image.asset("images/register.png"),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                FloatingActionButton.extended(
                  heroTag: 'facebook',
                  backgroundColor: Colors.blue[600],
                  foregroundColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  label: Text('JOIN WITH FACEBOOK'),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new Text("OR"),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                Divider(),
                new TextField(
                  decoration: new InputDecoration(
                    icon: Icon(
                      Icons.account_circle,
                    ),
                    hintText: "User Name",
                    labelText: "User Name",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new TextField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.lock),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                FloatingActionButton.extended(
                  heroTag: 'join',
                  backgroundColor: Colors.blue[600],
                  foregroundColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  label: Text('JOIN JOBMARKET'),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                FloatingActionButton.extended(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.white,
                  heroTag: 'already',
                  onPressed: () {
                    Navigator.pushNamed(context, '/Halamanlogin');
                  },
                  hoverColor: Colors.green,
                  label: Text(
                    'ALREADY MEMBER',
                    style: TextStyle(color: Colors.green[600]),
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(20.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Halamanlogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text("LOGIN"),
      ),
      bottomNavigationBar: Container(
        color: Colors.grey[300],
        child: Text("© 2020"),
        padding: new EdgeInsets.all(10.0),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new ListTile(
              title: new Text("Home"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanhome');
              },
            ),
            new ListTile(
              title: new Text("Find Jobs"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanfindjobs');
              },
            ),
            new ListTile(
              title: new Text("Apply"),
            ),
            new ListTile(
              title: new Text("Profile"),
            ),
            new ListTile(
              title: new Text("Register"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanregister');
              },
            ),
            new ListTile(
              title: new Text("Login"),
              onTap: () {
                Navigator.pushNamed(context, '/Halamanlogin');
              },
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          new Container(
            padding: new EdgeInsets.all(10.0),
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: new EdgeInsets.all(30.0),
                ),
                new Text(
                  "Login",
                  style: new TextStyle(fontSize: 30.0),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new TextField(
                  decoration: new InputDecoration(
                    icon: Icon(
                      Icons.account_circle,
                    ),
                    hintText: "User Name",
                    labelText: "User Name",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                new TextField(
                  obscureText: true,
                  decoration: new InputDecoration(
                    icon: Icon(Icons.lock),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    hintText: "Password",
                    labelText: "Password",
                  ),
                ),
                new Padding(
                  padding: new EdgeInsets.all(10.0),
                ),
                FloatingActionButton.extended(
                  heroTag: 'join',
                  backgroundColor: Colors.blue[600],
                  foregroundColor: Colors.white,
                  onPressed: () {
                    Navigator.pushNamed(context, '');
                  },
                  label: Text('LOGIN'),
                ),
                new Padding(
                  padding: new EdgeInsets.all(30.0),
                ),
                new Row(
                  children: <Widget>[
                    new Padding(
                      padding: new EdgeInsets.all(8.0),
                    ),
                    FloatingActionButton.extended(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      heroTag: 'forget',
                      onPressed: () {
                        Navigator.pushNamed(context, '');
                      },
                      hoverColor: Colors.green,
                      label: Text(
                        'FORGET PASSWORD ?',
                        style: TextStyle(color: Colors.green[600]),
                      ),
                    ),
                    new Padding(
                      padding: new EdgeInsets.all(10.0),
                    ),
                    FloatingActionButton.extended(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      heroTag: 'register',
                      onPressed: () {
                        Navigator.pushNamed(context, '/Halamanregister');
                      },
                      hoverColor: Colors.green,
                      label: Text(
                        'REGISTER',
                        style: TextStyle(color: Colors.green[600]),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
