import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 16.0,
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _createHeader(),
          _createDrawerItem(
            icon: Icons.home,
            text: 'Home',
          ),
          _createDrawerItem(
            icon: Icons.play_circle_outline,
            text: 'Live News',
          ),
          _createDrawerItem(
            icon: Icons.favorite_border,
            text: 'Favorites',
          ),
          _createDrawerItem(
            icon: Icons.person,
            text: 'Profile',
          ),
          Divider(color: Colors.black45, thickness: 0.5,),
          _createDrawerItem(
            icon: Icons.info_outline,
            text: 'About',
          ),
          _createDrawerItem(
            icon: Icons.face,
            text: 'Autors',
          ),
          Divider(color: Colors.black45, thickness: 0.5,),
          _createDrawerItem(
            icon: Icons.edit,
            text: 'Edit Profile',
          ),
          _createDrawerItem(
            icon: Icons.input,
            text: 'Logout',
          ),          
          ListTile(
            title: Text('Version 0.0.1'),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  Widget _createHeader() {
    return DrawerHeader(
        margin: EdgeInsets.zero,
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Colors.purple[900],
            Colors.purple[700],
            Colors.purple[400],
            Colors.purple[300]
          ],
          stops: [0.1, 0.4, 0.7, 0.9],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        )),
        child: Stack(children: <Widget>[
          Positioned(
              bottom: 12.0,
              left: 16.0,
              child: Text("Side Menu",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500))),
        ]));
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
