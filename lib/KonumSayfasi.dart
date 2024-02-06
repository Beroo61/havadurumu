import 'package:flutter/material.dart';

class KonumSayfasi extends StatelessWidget {
  get borderRadius => null;

  @override
  Widget build(BuildContext context) {
    var children;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff164255),

        leading: IconButton(                                                                  //geri çıkms butonu komutu
          icon: const Icon(
            Icons.arrow_back,                                                                 //butonun komutu
            color: Colors.white,                                                               //renk kodu
            size: 30,                                                                          //boyut kodu
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      backgroundColor: Color(0xff164255),

        body: SingleChildScrollView(
          child: Column(
              children: [

                Card(
                    margin: EdgeInsets.all(16.0),
                    color: const Color(0xff0896D3),
                    child: Padding(
                        padding: EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Sol üstte sıcaklık
                            Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '12°C',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  Text('Ankara/Altındağ',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
          
                                ],
                              ),
                            ),
          
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                'resimler/bulut.png',
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ],
                        ),
                        ),
                    ),
          
          
                        //////////////////////
          
                Card(
                  margin: EdgeInsets.all(16.0),
                  color: const Color(0xff0896D3),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sol üstte sıcaklık
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '21°C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text('Ankara/Çankaya',
          
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
          
                            ],
                          ),
                        ),
          
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'resimler/bulut.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          
                     //////////////////////////////////////
          
          
                Card(
                  margin: EdgeInsets.all(16.0),
                  color: const Color(0xff0896D3),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sol üstte sıcaklık
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '19°C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text('Ankara/Keçiören',
          
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
          
                            ],
                          ),
                        ),
          
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'resimler/bulut.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          
                /////////////////////////////////////////
          
          
                Card(
                  margin: EdgeInsets.all(16.0),
                  color: const Color(0xff0896D3),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sol üstte sıcaklık
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '17°C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text('Ankara/Kızılay',
          
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
          
                            ],
                          ),
                        ),
          
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'resimler/bulut.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          
                /////////////////////////////////////////////////////////////
          
          
                Card(
                  margin: EdgeInsets.all(16.0),
                  color: const Color(0xff0896D3),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sol üstte sıcaklık
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '14°C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text('Ankara/Çubuk',
          
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
          
                            ],
                          ),
                        ),
          
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'resimler/bulut.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          
          
                ////////////////////////////////////////////
          
          
                Card(
                  margin: EdgeInsets.all(16.0),
                  color: const Color(0xff0896D3),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sol üstte sıcaklık
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '13°C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text('Ankara/Gölbaşı',
          
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
          
                            ],
                          ),
                        ),
          
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'resimler/bulut.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          
                ///////////////////////////////////////////
          
          
                Card(
                  margin: EdgeInsets.all(16.0),
                  color: const Color(0xff0896D3),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sol üstte sıcaklık
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '15°C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text('Ankara/Bahçelievler',
          
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
          
                            ],
                          ),
                        ),
          
                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'resimler/bulut.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                //////////////////////////////////////

                Card(
                  margin: EdgeInsets.all(16.0),
                  color: const Color(0xff0896D3),
                  child: Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Sol üstte sıcaklık
                        Expanded(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '15°C',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 20),
                              Text('Ankara/Yenimahalle',

                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),

                            ],
                          ),
                        ),

                        Expanded(
                          flex: 1,
                          child: Image.asset(
                            'resimler/bulut.png',
                            width: 50,
                            height: 50,
                          ),
                        ),
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

