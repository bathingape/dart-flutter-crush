import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'First app',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent[100],
      appBar: AppBar(
        title: Text('Profile'),
        backgroundColor: Colors.tealAccent[200],
        centerTitle: true,
        elevation: 0.0,

        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () {
        //     print('menu button is clicked');
        //   },
        // ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              print('Shopping button is clicked');
            },
          ),
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Search button is clicked');
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/cat.jpeg'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('ASH'),
              accountEmail: Text('hbd9425@gmail.com'),
              onDetailsPressed: () {
                print('arrow is clicked!');
              },
              decoration: BoxDecoration(
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
            )
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 40, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ark.jpeg'),
                radius: 60,
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[850],
              thickness: 0.5,
              endIndent: 30,
            ),
            Text(
              'Name',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Ark',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'POWER LEVEL ',
              style: TextStyle(
                color: Colors.black,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '15',
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 2.0,
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'using dart',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'window',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.check_circle_outline),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'vscode',
                  style: TextStyle(fontSize: 16, letterSpacing: 1),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
