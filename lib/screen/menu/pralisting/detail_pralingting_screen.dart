import 'package:flutter/material.dart';
import 'package:kerjaansatu/screen/menu/bantuan/ajukan_pertanyaan_screen.dart';
import 'package:kerjaansatu/screen/menu/pralisting/deskripsi_screen.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:kerjaansatu/utilities/constants.dart';

class DetaiPralistingScreen extends StatefulWidget {
  @override
  _DetaiPralistingScreenState createState() => _DetaiPralistingScreenState();
}

class _DetaiPralistingScreenState extends State<DetaiPralistingScreen>
    with SingleTickerProviderStateMixin {
  TabController controller;
  

  @override
  void initState() {
    super.initState();
    controller = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        // elevation: 0.0,
        leading: new IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        centerTitle: true,
        title: Image.asset(
          "assets/images/logo.png",
          width: 90.0,
          height: 40.0,
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              pinned: false,
              backgroundColor: Colors.white,
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.pin,
                background: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, top: 20.0, bottom: 15.0),
                      child: Container(
                        // height: 370.0,
                        height: 220.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            DetailPralisting(
                              gambar: 'assets/images/list4.jpg',
                            ),
                            DetailPralisting(
                              gambar: 'assets/images/list6.jpg',
                            ),
                            DetailPralisting(
                              gambar: 'assets/images/list4.jpg',
                            ),
                            DetailPralisting(
                              gambar: 'assets/images/list6.jpg',
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "#",
                            style: TextStyle(
                                color: Colors.redAccent[700],
                                fontSize: 15.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "1",
                            style: TextStyle(
                                color: Colors.redAccent[700],
                                fontSize: 15.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 3.0,
                          ),
                          Text(
                            "PALING BANYAK DIAJUKAN",
                            style: TextStyle(
                                color: Colors.redAccent[700],
                                fontSize: 15.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Penyedia Akomodasi Makanan & Minuman",
                            style: TextStyle(
                                color: Colors.blue[800],
                                fontSize: 15.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Kue Balok Mang Salam",
                            style: TextStyle(
                                fontSize: 22.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Boga Sinar Malam",
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'OpenSans',
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  FittedBox(
                                    child: Icon(
                                      Icons.person,
                                      size: 15.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  FittedBox(
                                    child: Text(
                                      "1892",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  FittedBox(
                                    child: Text(
                                      "Orang Mengajukan",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  FittedBox(
                                    child: Text(
                                      "|",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 20.0,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 5,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  FittedBox(
                                    child: Icon(
                                      Icons.favorite_border,
                                      size: 15.0,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  FittedBox(
                                    child: Text(
                                      "304",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 3.0,
                                  ),
                                  FittedBox(
                                    child: Text(
                                      "Orang Menyukai",
                                      style: TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        LinearPercentIndicator(
                          width: MediaQuery.of(context).size.width * 0.9,
                          animation: true,
                          lineHeight: 20.0,
                          animationDuration: 4500,
                          percent: 0.84,
                          center: Text("84.0%",
                              style: TextStyle(color: Colors.white)),
                          linearStrokeCap: LinearStrokeCap.roundAll,
                          progressColor: Colors.green[800],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Rp. ",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "1.900.487.800",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              " Rencana pendaan dari ",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Rp. ",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "3.300.000.000",
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              expandedHeight: 510.0,
              bottom: TabBar(
                isScrollable: true,
                indicatorColor: Colors.redAccent[700],
                labelColor: Colors.redAccent[700],
                unselectedLabelColor: Colors.grey,
                tabs: [
                  Tab(text: 'Deskripsi'),
                  Tab(text: 'Identitas Calon Penerbit'),
                  Tab(text: 'Informasi Finansial'),
                  Tab(text: 'Informasi Non Finansial'),
                  Tab(text: 'Lokasi'),
                ],
                controller: controller,
              ),
            )
          ];
        },
        body: TabBarView(
          controller: controller,
          children: <Widget>[
            new DeskripsiScreen(),
            new AjukanPertanyaanScreen(),
            new AjukanPertanyaanScreen(),
            new AjukanPertanyaanScreen(),
            new AjukanPertanyaanScreen(),
          ],
        ),
      ),
      bottomSheet: Container(
        height: 80.0,
        color: Colors.white,
        child: Padding(
          padding: new EdgeInsets.symmetric(vertical: 18.0, horizontal: 15.0),
          child: Row(
            children: <Widget>[
              Flexible(
                child: TextField(
                  keyboardType: TextInputType.text,
                  style: TextStyle(
                    color: Colors.black87,
                    fontFamily: 'OpenSans',
                  ),
                  decoration: new InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2.0),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 1.0),
                      borderRadius: BorderRadius.circular(40.0),
                    ),
                    hintText: 'Masukkan Ulasan Anda...',
                    hintStyle: kHintTextStyle,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: CircleAvatar(
                  backgroundColor: Colors.redAccent[700],
                  radius: 25.0,
                  child: Icon(
                    Icons.send,
                    color: Colors.white,
                    size: 20.0,
                  ),
                ),
              )
            ],
          ),
          // child: Container(
          //   color: Colors.blue,
          //   child: TextField(
          //     keyboardType: TextInputType.text,
          //     style: TextStyle(
          //       color: Colors.black87,
          //       fontFamily: 'OpenSans',
          //     ),
          //     decoration: new InputDecoration(
          //       focusedBorder: OutlineInputBorder(
          //         borderSide: BorderSide(color: Colors.red, width: 2.0),
          //         borderRadius: BorderRadius.circular(40.0),
          //       ),
          //       enabledBorder: OutlineInputBorder(
          //         borderSide: BorderSide(color: Colors.grey, width: 1.0),
          //         borderRadius: BorderRadius.circular(40.0),
          //       ),
          //       hintText: 'Masukkan Ulasan Anda...',
          //       hintStyle: kHintTextStyle,
          //     ),
          //   ),
          // ),
        ),
      ),
    );
  }
}

class DetailPralisting extends StatelessWidget {
  final String gambar;

  DetailPralisting({
    this.gambar,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Row(
        children: <Widget>[
          Container(
            // width: 250.0,
            width: 320.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              image: DecorationImage(
                image: AssetImage(gambar),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
