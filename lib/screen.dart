import 'package:flutter/material.dart';
import 'package:uts/drawer.dart';

class HomePage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: Text(
            'Inbox',
          ),
          actions: [
            IconButton(
              onPressed: () {
                _scaffoldKey.currentState!.openEndDrawer();
              },
              icon: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.teal[100],
        ),
        drawer: DrawerWidget(),
        //endDrawer: DrawerWidget(),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('2h'),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      Text(
                        '' + title[index],
                      ),
                    ]),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('' + isi[index]),
                    Icon(Icons.star_border),
                  ],
                ),
              ),
            );
          },
          itemCount: nama.length,
        ),
      ),
    );
  }
}

class Outbox extends StatelessWidget {
  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Outbox'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            )
          ],
          backgroundColor: Colors.teal[100],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(Icons.account_circle),
                title: Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        Text('2h'),
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                      Text(
                        '' + title[index],
                      ),
                    ]),
                  ],
                ),
                subtitle: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('' + isi[index]),
                    Icon(Icons.star_border),
                  ],
                ),
              ),
            );
          },
          itemCount: nama.length,
        ),
      ),
    );
  }
}

class Spam extends StatelessWidget {
  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Spam'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.teal[100],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('2h'),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                    Text(
                      '' + title[index],
                    ),
                  ]),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('' + isi[index]),
                  Icon(Icons.star_border),
                ],
              ),
            ),
          );
        },
        itemCount: nama.length,
      ),
    );
  }
}

class Forums extends StatelessWidget {
  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forums'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.teal[100],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('2h'),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                    Text(
                      '' + title[index],
                    ),
                  ]),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('' + isi[index]),
                  Icon(Icons.star_border),
                ],
              ),
            ),
          );
        },
        itemCount: nama.length,
      ),
    );
  }
}

class Promos extends StatelessWidget {
  final List nama = [
    "Montse Hall",
    "Albert Lives",
    "Imma Mustard",
    "Danny Pej",
  ];
  final List title = [
    "Hello there!!",
    "Important News",
    "Weekend Meeting",
    "Material Design",
  ];
  final List isi = [
    "Has been a long time...",
    "That is awesome!! Take a look...",
    "Can you meet this weekend?...",
    "There is the new widget libary...",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
        backgroundColor: Colors.teal[100],
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.account_circle),
              title: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(nama[index], style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('2h'),
                    ],
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: <Widget>[
                    Text(
                      '' + title[index],
                    ),
                  ]),
                ],
              ),
              subtitle: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('' + isi[index]),
                  Icon(Icons.star_border),
                ],
              ),
            ),
          );
        },
        itemCount: nama.length,
      ),
    );
  }
}
