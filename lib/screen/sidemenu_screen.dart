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
            icon: Icons.info,
            text: 'Tentang Modal Saham',
          ),
          _createDrawerItem(
            icon: Icons.settings,
            text: 'Cara Investasi',
          ),
          _createDrawerItem(
            icon: Icons.new_releases,
            text: 'Berita Santara',
          ),
          _createDrawerItem(
            icon: Icons.help,
            text: 'Syarat & Ketentuan Pemodal',
          ),
          Divider(
            color: Colors.black45,
            thickness: 0.5,
          ),
          _createDrawerItem(
            icon: Icons.view_list,
            text: 'Syarat & Ketentuan Penerbit',
          ),
          _createDrawerItem(
            icon: Icons.view_list,
            text: 'Kebijakan & Privasi',
          ),
          Divider(
            color: Colors.black45,
            thickness: 0.5,
          ),
          _createDrawerItem(
            icon: Icons.security,
            text: 'Disclaimer',
          ),
          _createDrawerItem(
            icon: Icons.insert_drive_file,
            text: 'Info App',
          ),
          _createDrawerItem(
            icon: Icons.info,
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
      decoration: BoxDecoration(color: Colors.redAccent[700]),
      child: Stack(children: <Widget>[
        Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/list1.jpg"),
                    radius: 40.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Fajar Dwi Setiawan",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "fajardwisetiawan19@gmail.com",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w300),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ]),
    );
  }

  Widget _createDrawerItem(
      {IconData icon, String text, GestureTapCallback onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon, color: Colors.grey),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text, style: TextStyle(fontWeight: FontWeight.w400)),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
