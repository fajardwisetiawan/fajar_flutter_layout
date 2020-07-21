import 'package:flutter/material.dart';
import 'package:kerjaansatu/screen/menu/bantuan/ajukan_pertanyaan_screen.dart';
import 'package:kerjaansatu/screen/menu/bantuan/riwayat_pertanyaan_screen.dart';

class BantuanScreen extends StatefulWidget {
  @override
  _BantuanScreenState createState() => _BantuanScreenState();
}

class _BantuanScreenState extends State<BantuanScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = new TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: Material(
            color: Colors.white,
            child: TabBar(
              controller: controller,
              indicatorColor: Colors.redAccent[700],
              labelColor: Colors.redAccent[700],
              unselectedLabelColor: Colors.grey,
              tabs: <Widget>[
                new Tab(
                  child: Text("Ajukan Pertanyaan"),
                ),
                new Tab(
                  child: Text("Riwayat Pertanyaan"),
                ),
              ],
            ),
          ),
          preferredSize: Size.fromHeight(60.0)),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new AjukanPertanyaanScreen(),
          new RiwayatPertanyaanScreen(),
        ],
      ),
    );
  }
}
