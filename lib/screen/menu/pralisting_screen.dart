import 'package:flutter/material.dart';

class PralistingScreen extends StatefulWidget {
  @override
  _PralistingScreenState createState() => _PralistingScreenState();
}

class _PralistingScreenState extends State<PralistingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  right: 23.0, left: 23.0, bottom: 8.0, top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Paling Banyak Diajukan",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, '/detail_pralisting_screen');
                },
                child: Container(
                  // height: 370.0,
                  height: 300.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Pralisting(
                        gambar: 'assets/images/list4.jpg',
                        text1: 'Makanan dan Minuman',
                        text2: 'Kue Balok Mang Salam',
                        text3: 'PT Boga SInar Malam',
                        text4: '568',
                        text5: '945',
                        text6: '48',
                      ),
                      Pralisting(
                        gambar: 'assets/images/list6.jpg',
                        text1: 'Jasa Pendidikan',
                        text2: 'Salad Nyoo',
                        text3: 'Yayasan Indonesia Pintar',
                        text4: '547',
                        text5: '325',
                        text6: '1054',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 23.0, left: 23.0, bottom: 8.0, top: 15.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Pengajuan Bisnis",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Text(
                        "Berbagai UKM berkualitas siap untuk diajukan",
                        style: TextStyle(
                          fontSize: 15.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          // height: 150.0,
                          // width: 100.0,
                          height: 148.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300],
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/list2.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Perdagangan Besar dan Eceran",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.blue[800]),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "SYAFAAT AGRI",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "PT ADINASTI TEKNIK PERKASA",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 35.0,
                            ),
                            Text(
                              "PT DINASTI TEKNIK PERKASA berdiri sejak \ntahun 2015, mulai menjalankan Bisnis...",
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: <Widget>[
                            //     Icon(Icons.person_outline, size: 18.0,),
                            //     Text("1713", style: TextStyle(fontSize: 16.0),)
                            //   ],
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.person_outline,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "1865",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.favorite_border,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "164",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.chat_bubble_outline,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "145",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          // height: 150.0,
                          // width: 100.0,
                          height: 148.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300],
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/list2.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Perdagangan Besar dan Eceran",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.blue[800]),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "SYAFAAT AGRI",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "PT ADINASTI TEKNIK PERKASA",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 35.0,
                            ),
                            Text(
                              "PT DINASTI TEKNIK PERKASA berdiri sejak \ntahun 2015, mulai menjalankan Bisnis...",
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: <Widget>[
                            //     Icon(Icons.person_outline, size: 18.0,),
                            //     Text("1713", style: TextStyle(fontSize: 16.0),)
                            //   ],
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.person_outline,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "1865",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.favorite_border,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "164",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.chat_bubble_outline,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "145",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          // height: 150.0,
                          // width: 100.0,
                          height: 148.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300],
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/list2.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Perdagangan Besar dan Eceran",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.blue[800]),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "SYAFAAT AGRI",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "PT ADINASTI TEKNIK PERKASA",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 35.0,
                            ),
                            Text(
                              "PT DINASTI TEKNIK PERKASA berdiri sejak \ntahun 2015, mulai menjalankan Bisnis...",
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: <Widget>[
                            //     Icon(Icons.person_outline, size: 18.0,),
                            //     Text("1713", style: TextStyle(fontSize: 16.0),)
                            //   ],
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.person_outline,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "1865",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.favorite_border,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "164",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.chat_bubble_outline,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "145",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey[300],
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Expanded(
                        flex: 3,
                        child: Container(
                          // height: 150.0,
                          // width: 100.0,
                          height: 148.0,
                          width: 70.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300],
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/list2.jpg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Expanded(
                        flex: 7,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Perdagangan Besar dan Eceran",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.blue[800]),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "SYAFAAT AGRI",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              "PT ADINASTI TEKNIK PERKASA",
                              style: TextStyle(
                                  fontSize: 15.0, color: Colors.black),
                            ),
                            SizedBox(
                              height: 35.0,
                            ),
                            Text(
                              "Selama pandemi terjadi, organisasi peneliti dunia justru dinilai lambat...",
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey),
                            ),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.center,
                            //   children: <Widget>[
                            //     Icon(Icons.person_outline, size: 18.0,),
                            //     Text("1713", style: TextStyle(fontSize: 16.0),)
                            //   ],
                            // ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.person_outline,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "1865",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.favorite_border,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "164",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.chat_bubble_outline,
                                        size: 15.0,
                                      ),
                                      SizedBox(
                                        width: 3.0,
                                      ),
                                      Text(
                                        "145",
                                        style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 15.0),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Lihat Semua",
                      style: new TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.w300,
                          color: Colors.green),
                    ),
                    SizedBox(
                      width: 8.0,
                    ),
                    Icon(
                      Icons.chevron_right,
                      size: 18.0,
                      color: Colors.green,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Pralisting extends StatelessWidget {
  final String gambar;
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;

  Pralisting({
    this.gambar,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Row(
        children: <Widget>[
          Container(
            // width: 250.0,
            width: 200.0,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey[300],
              ),
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Container(
                  height: 180.0,
                  width: 200.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                    image: DecorationImage(
                      image: AssetImage(gambar),
                      fit: BoxFit.fill,
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(text1, style: TextStyle(color: Colors.blue[800])),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.003,
                      ),
                      Text(text2,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.003,
                      ),
                      Text(text3),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.02,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.person_outline,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  "1865",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.favorite_border,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  "164",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.chat_bubble_outline,
                                  size: 15.0,
                                ),
                                SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  "145",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 15.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
