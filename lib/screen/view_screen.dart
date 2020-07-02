import 'package:flutter/material.dart';
import './menu/home_screen.dart';
import './menu/transaksi_screen.dart' as transaksi;
import './menu/bantuan_screen.dart' as bantuan;
import './menu/pralisting_screen.dart' as pralisting;
import './menu/account_screen.dart' as account;
import './sidemenu_screen.dart';

class ViewScreen extends StatefulWidget {
  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 5);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // drawer: Theme(
        // data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        // child: NavDrawer()
        // ),
        key: _scaffoldKey,
        drawer: NavDrawer(),
        bottomNavigationBar: Container(
          height: 50.0,
          color: Colors.white,
          child: TabBar(
            controller: controller,
            indicatorColor: Colors.transparent,
            labelColor: Colors.redAccent[700],
            unselectedLabelColor: Colors.grey[400],
            tabs: <Widget>[
              new Tab(
                child: Container(
                  padding: const EdgeInsets.only(top:10.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.home,
                        size: 20.0,
                      ),
                      Text(
                        "Home",
                        style: new TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              ),
              new Tab(
                child: Container(
                  padding: const EdgeInsets.only(top:10.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.account_balance_wallet,
                        size: 20.0,
                      ),
                      Text(
                        "Transaksi",
                        style: new TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              ),
              new Tab(
                child: Container(
                  padding: const EdgeInsets.only(top:10.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.help,
                        size: 20.0,
                      ),
                      Text(
                        "Bantuan",
                        style: new TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              ),
              new Tab(
                child: Container(
                  padding: const EdgeInsets.only(top:10.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.view_list,
                        size: 20.0,
                      ),
                      Text(
                        "Pra Listing",
                        style: new TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              ),
              new Tab(
                child: Container(
                  padding: const EdgeInsets.only(top:10.0),
                  alignment: Alignment.center,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 20.0,
                      ),
                      Text(
                        "Account",
                        style: new TextStyle(fontSize: 13.0),
                      ),
                    ],
                  ),
                ),
              ),
              // new Tab(
              //     icon: new Icon(Icons.account_balance_wallet),
              //     text: "Transaksi"),
              // new Tab(icon: new Icon(Icons.help), text: "Bantuan"),
              // new Tab(icon: new Icon(Icons.view_list), text: "Pra Listing"),
              // new Tab(icon: new Icon(Icons.person), text: "Account"),
            ],
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
          leading: new IconButton(
            color: Colors.black,
            icon: Icon(Icons.menu),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
          title: Center(
            child: Image.asset(
              "assets/images/logo.png",
              width: 90.0,
              height: 40.0,
            ),
          ),
          actions: <Widget>[
            new IconButton(
              color: Colors.black,
              icon: Icon(Icons.notifications_none),
              onPressed: () {},
            ),
          ],
        ),
        body: new TabBarView(
          controller: controller,
          children: <Widget>[
            new HomeScreen(),
            new transaksi.TransaksiScreen(),
            new bantuan.BantuanScreen(),
            new pralisting.PralistingScreen(),
            new account.AccountScreen(),
          ],
        ));
  }
}
