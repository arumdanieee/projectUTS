import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _drawerHeader(),
          _drawerItem(
            icon: Icons.inbox,
            text: 'Inbox',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(0);
              //Navigator.push(context, MaterialPageRoute(builder: (context) => Profil()));
              Navigator.pushNamed(context, '/');
              //Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.outbox,
            text: 'Outbox',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(1);
              Navigator.pushNamed(context, '/outbox');
              //Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.info,
            text: 'Spam',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(2);
              Navigator.pushNamed(context, '/spam');
              //Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.forum,
            text: 'Forums',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(3);
              Navigator.pushNamed(context, '/forums');
              //Navigator.pop(context);
            },
          ),
          _drawerItem(
            icon: Icons.announcement,
            text: 'Promos',
            onTap: () {
              DefaultTabController.of(context)?.animateTo(4);
              Navigator.pushNamed(context, '/promos');
              //Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}

Widget _drawerHeader() {
  return UserAccountsDrawerHeader(
    currentAccountPicture: ClipOval(
      child: Image(image: AssetImage('assets/images/ning.jpg'), fit: BoxFit.cover),
    ),
    // otherAccountsPictures: [
    //   ClipOval(
    //     child: Image(image: AssetImage('assets/images/ning.jpg'), fit: BoxFit.cover),
    //   ),
    //   ClipOval(
    //     child: Image(image: AssetImage('assets/images/ning.jpg'), fit: BoxFit.cover),
    //   )
    // ],
    accountName: Text('HSP Watulintang Arumdanie'),
    accountEmail: Text('hspwatul@gmail.com'),
  );
}

Widget _drawerItem({required IconData icon, required String text, required GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Icon(
          icon,
          color: Colors.grey,
        ),
        Padding(
          padding: EdgeInsets.only(left: 25.0),
          child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    ),
    onTap: onTap,
  );
}
