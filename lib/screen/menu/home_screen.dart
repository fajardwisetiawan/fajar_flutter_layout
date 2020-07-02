import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:percent_indicator/percent_indicator.dart';

final List<String> imgList = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<String> imgList2 = [
  'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
  'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
  'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
  'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
  'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
];

final List<Widget> imageSliders = imgList
    .map(
      (item) => Container(
        child: Container(
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: Colors.grey[100],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            child: Stack(
              children: <Widget>[
                Image.network(
                  item,
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
              ],
            ),
          ),
        ),
      ),
    )
    .toList();

final List<Widget> imageSliders2 = imgList2
    .map(
      (item) => Container(
        child: Container(
          height: 180.0,
          width: 320.0,
          margin: EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 3,
                blurRadius: 9,
                offset: Offset(0, 0), // changes position of shadow
              ),
            ],
          ),

          // child: ClipRRect(
          //   borderRadius: BorderRadius.all(Radius.circular(5.0)),
          //   child: Stack(
          //     children: <Widget>[
          //       Image.network(
          //         item,
          //         fit: BoxFit.cover,
          //         width: 1000.0,
          //       ),
          //     ],
          //   ),
          // ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      flex: 3,
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            backgroundImage: NetworkImage(item),
                            radius: 40.0,
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 6,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "Fajar Dwi Setiawan",
                              style: TextStyle(
                                  fontWeight: FontWeight.w600, fontSize: 18.0),
                            ),
                            Text(
                              "Erendi Digital Lab",
                              style: TextStyle(color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 20.0),
                  child: Wrap(
                    children: <Widget>[
                      Image.asset(
                        "assets/images/petik.png",
                        height: 20.0,
                        width: 20.0,
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30.0),
                        child: Text(
                          "Investasinya sangat mudah  dan tidak repot sama sekali. Saya bersyukur menemukan dan menggunakan aplikasi ini.",
                          textAlign: TextAlign.justify,
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
    )
    .toList();

class CardHorizontal extends StatelessWidget {
  final String title;
  final String subtitle;
  final String gambar;

  CardHorizontal({this.title, this.subtitle, this.gambar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Container(
        width: 300.0,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey[300],
          ),
          borderRadius: BorderRadius.circular(10.0),
          image: DecorationImage(
            image: AssetImage(gambar),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
                color: Colors.red[50].withOpacity(0.5),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      Text(
                        title,
                        style: TextStyle(fontSize: 25.0, color: Colors.black),
                      ),
                      Text(
                        subtitle,
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class CardHorizontal2 extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  final String text7;
  final String text8;
  final double percent;
  final String percentText;
  final String gambarCD2;

  CardHorizontal2({
    this.gambarCD2,
    this.text1,
    this.text2,
    this.text3,
    this.text4,
    this.text5,
    this.text6,
    this.text7,
    this.text8,
    this.percent,
    this.percentText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0),
      child: Row(
        children: <Widget>[
          Container(
            width: 250.0,
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
                  width: 250.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5),
                        topLeft: Radius.circular(5)),
                    image: DecorationImage(
                      image: AssetImage(gambarCD2),
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
                        height: 2.0,
                      ),
                      Text(text2,
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.w700)),
                      SizedBox(
                        height: 2.0,
                      ),
                      Text(text3),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text("Mulai dari"),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text(
                            text4,
                            style: TextStyle(
                                color: Colors.green[800],
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      LinearPercentIndicator(
                        width: MediaQuery.of(context).size.width - 185,
                        animation: true,
                        lineHeight: 15.0,
                        animationDuration: 4500,
                        percent: percent,
                        center: Text(percentText,
                            style: TextStyle(color: Colors.white)),
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Colors.green[900],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        children: <Widget>[
                          Text("Sisa waktu :",
                              style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 2.5,
                          ),
                          Text(text5, style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 1.5,
                          ),
                          Text("Hari", style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 2.5,
                          ),
                          Text("-", style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 2.5,
                          ),
                          Text(text6, style: TextStyle(color: Colors.grey)),
                          SizedBox(
                            width: 1.5,
                          ),
                          Text("Investor", style: TextStyle(color: Colors.grey))
                        ],
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Total Pendanaan",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "Periode Dividen",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 1.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            text7,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            text8,
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                            ),
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
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child: Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: false,
                    ),
                    items: imageSliders,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text("Platform Equity Crownd Funding",
                        style: new TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold)),
                    Text(
                      "Anda punya bisnis? Sedang mencari pemodal? \n Daftar disini",
                      style: new TextStyle(fontSize: 17.0),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                height: 35.0,
                width: 350.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.red[900],
                      Colors.redAccent[700],
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Text(
                    'Saya mau daftarkan bisnis',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 23.0, left: 23.0, bottom: 15.0, top: 15.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "UKM Corona Relief",
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
              child: Container(
                height: 200.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardHorizontal(
                      title: 'UKM Corona Relief',
                      subtitle: 'Get up to 10% monthly interest!',
                      gambar: 'assets/images/undraw1.png',
                    ),
                    CardHorizontal(
                      title: 'Untuk Anda Pebisnis',
                      subtitle: 'Get up to 10% monthly interest!',
                      gambar: 'assets/images/undraw2.png',
                    ),
                    CardHorizontal(
                      title: 'Untuk Anda Para Pemodal',
                      subtitle: 'Get up to 10% monthly interest!',
                      gambar: 'assets/images/undraw3.png',
                    ),
                    CardHorizontal(
                      title: 'Penawaran Saham Dibuka',
                      subtitle: 'Get up to 10% monthly interest!',
                      gambar: 'assets/images/undraw4.png',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 9,
                    offset: Offset(0, 0), // changes position of shadow
                  ),
                ],
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25.0, top: 15.0),
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                right: BorderSide(
                                  //                   <--- left side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                                bottom: BorderSide(
                                  //                    <--- top side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "7 Menit",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.redAccent[700],
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "Rekor Sold",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 25.0, top: 15.0),
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                left: BorderSide(
                                  //                   <--- left side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                                bottom: BorderSide(
                                  //                    <--- top side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "50",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.redAccent[700],
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "Bisnis Terdaftar",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(left: 25.0, bottom: 15.0),
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                right: BorderSide(
                                  //                   <--- left side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  //                    <--- top side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "6+ Rb",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.redAccent[700],
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "Bisnis Mendaftar",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding:
                              const EdgeInsets.only(right: 25.0, bottom: 15.0),
                          child: Container(
                            padding: const EdgeInsets.all(40.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border(
                                left: BorderSide(
                                  //                   <--- left side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                                top: BorderSide(
                                  //                    <--- top side
                                  color: Colors.grey[300],
                                  width: 0.5,
                                ),
                              ),
                            ),
                            child: Column(
                              children: <Widget>[
                                Text(
                                  "183+ Rb",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.redAccent[700],
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3.0,
                                ),
                                Text(
                                  "Member Pemodal",
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  right: 23.0, left: 23.0, bottom: 8.0, top: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Pilih Bisnis",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "Lihat Semua",
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(right: 20.0, left: 20.0, bottom: 20.0),
              child: Container(
                height: 370.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    CardHorizontal2(
                      gambarCD2: 'assets/images/list4.jpg',
                      text1: 'Penyedia Akomodasi',
                      text2: 'Salad Nyoo',
                      text3: 'PT Salad Nyoo Indonesia',
                      text4: 'Rp. 1.550.000',
                      text5: '5',
                      text6: '776',
                      text7: 'Rp. 1.800.0000.000',
                      text8: '2 Bulan',
                      percent: 0.84,
                      percentText: '84.0%',
                    ),
                    CardHorizontal2(
                      gambarCD2: 'assets/images/list6.jpg',
                      text1: 'Penyedia Akomodasi',
                      text2: 'Salad Nyoo',
                      text3: 'PT Salad Nyoo Indonesia',
                      text4: 'Rp. 1.250.000',
                      text5: '4',
                      text6: '856',
                      text7: 'Rp. 2.500.0000.000',
                      text8: '6 Bulan',
                      percent: 0.12,
                      percentText: '12.0%',
                    ),
                  ],
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
                        "UKM Corona Relief",
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
                          height: 150.0,
                          width: 100.0,
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
                            Text(
                              "SYAFAAT AGRI",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
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
                          height: 150.0,
                          width: 100.0,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[300],
                            ),
                            borderRadius: BorderRadius.circular(5.0),
                            image: DecorationImage(
                              image: AssetImage("assets/images/list5.jpg"),
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
                            Text(
                              "SYAFAAT AGRI",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
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
                          height: 150.0,
                          width: 100.0,
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
                            Text(
                              "SYAFAAT AGRI",
                              style: TextStyle(
                                fontSize: 20.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
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
              padding: const EdgeInsets.only(
                  right: 23.0, left: 23.0, bottom: 8.0, top: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Testimoni Aplikasi",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      aspectRatio: 2.0,
                      enlargeCenterPage: false,
                    ),
                    items: imageSliders2,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Column(
                  children: <Widget>[
                    Text(
                      "Memiliki pertanyaan terkait",
                      style: new TextStyle(fontSize: 20.0),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Aplikasi ini?",
                          style: new TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " Hubungi kami",
                          style: new TextStyle(fontSize: 25.0),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Container(
                height: 40.0,
                width: 350.0,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      "assets/images/wa.png",
                      height: 40.0,
                      width: 40.0,
                    ),
                    Text(
                      'WhatsApp',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(bottom: 20.0),
            //   child: Container(
            //     height: 130.0,
            //     width: 350.0,
            //     decoration: BoxDecoration(
            //       color: Colors.green,
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     child: Wrap(
            //       children: <Widget>[
            //         Text(
            //           'WhatsApp WhatsAppWhatsAppWhatsAppWhatsApp WhatsApp WhatsApp WhatsApp WhatsApp WhatsApp WhatsApp WhatsApp WhatsApp WhatsAppWhatsApp v WhatsApp WhatsAppWhatsAppWhatsApp',
            //           textAlign: TextAlign.justify, style: TextStyle(
            //             color: Colors.white,
            //             fontSize: 15.0,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
