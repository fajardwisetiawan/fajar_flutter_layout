import 'package:flutter/material.dart';

class DeskripsiScreen extends StatefulWidget {
  @override
  _DeskripsiScreenState createState() => _DeskripsiScreenState();
}

class _DeskripsiScreenState extends State<DeskripsiScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5.0, bottom: 1.5),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 10.0),
                  child: Wrap(
                    children: <Widget>[
                      Text(
                        'Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere, debitis aspernatur. Quibusdam doloremque exercitationem, cumque in dignissimos debitis, non sapiente consectetur odio, vero quas dolor delectus ullam impedit voluptates fugiat!',
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontFamily: 'OpenSans'),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.5),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Container(
                    height: 40.0,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey[300],
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Prospektus ',
                          style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Icon(
                          Icons.cloud_download,
                          size: 16.0,
                          color: Colors.black87,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 1.5),
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 20.0),
                  child: Column(
                    children: <Widget>[
                      FittedBox(
                        child: Text(
                          'Apakah Anda ingin mengajukan penerbit ini listing di Modal Saham?',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Container(
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: Colors.red[800],
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Ajukan Bisnis Ini',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16.0,
                                fontFamily: 'Open Sans',
                                fontWeight: FontWeight.w400,
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
          ],
        ),
      ),
    );
  }
}
