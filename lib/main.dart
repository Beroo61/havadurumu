import 'package:flutter/material.dart';
import 'package:havadurumu/main.dart';



import 'KonumSayfasi.dart';


final List<Map<String, dynamic>> kartVerileri = [
  {'saat': '12:00', 'derece': '25', 'logo': 'resimler/küçükbulut.png'},
  {'saat': '15:30', 'derece': '22', 'logo': 'resimler/küçükbulut.png'},
  {'saat': '18:45', 'derece': '20', 'logo': 'resimler/küçükbulut.png'},
  {'saat': '21:15', 'derece': '18', 'logo': 'resimler/küçükbulut.png'},
  {'saat': '23:45', 'derece': '15', 'logo': 'resimler/küçükbulut.png'},
];


final List<Map<String, dynamic>> kartVerileri2 = [
  {'gün': 'Sal.', 'derece': '20', 'logo': 'resimler/küçükbulut.png'},
  {'gün': 'Çar.', 'derece': '18', 'logo': 'resimler/küçükbulut.png'},
  {'gün': 'per.', 'derece': '21', 'logo': 'resimler/küçükbulut.png'},
  {'gün': 'Cum.', 'derece': '18', 'logo': 'resimler/küçükbulut.png'},
  {'gün': 'Cmt.', 'derece': '13', 'logo': 'resimler/küçükbulut.png'},
];



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    var ekranBilgisi = MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff164255),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


          ],
        ),
        actions: [
          IconButton(                                                                         //artı butonun komutu
            icon: const Icon(
              Icons.add_circle,                                                                //artı butunun kodu
              color: Colors.white,                                                             // renk kodu
              size: 30,                                                                       // artı butonu büyüklüğü
            ),
            onPressed: () {                                                                    //yeni sayfa koduna buradan başlanılıyor
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  KonumSayfasi()),               //yeni sayfa oluşturma kodu
              );
            },
          ),
        ],
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
        child: Center(
          child: Padding(
            padding:  EdgeInsets.all(ekranGenisligi/100),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 SizedBox(                                                         // resim kodunu bunun altından yapacağım
                  width: 400,                                                     // resim büyüklüğü
                  height: 100,
                    child: Image.asset('resimler/bulut.png')                     //bu kod altından hepsi yapılıyor
                 ),
                Text(                                                            // yazılarıda bu kodun altında yapacağım
                  'Keçiören',
                  style: TextStyle(
                    fontSize: 30,                                              // yazıların büyüklerini ayarlıyor
                    color: Colors.grey,
                    // Metin üzerine gölge ekleyen kısım
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(                                                            // yazılarıda bu kodun altında yapacağım
                  '12°C',
                  style: TextStyle(
                    fontSize: 30,                                              // yazıların büyüklerini ayarlıyor
                    color: Colors.grey,
                    // Metin üzerine gölge ekleyen kısım
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(                                                            // yazılarıda bu kodun altında yapacağım
                  'En fazla En az',
                  style: TextStyle(
                    fontSize: 15,                                              // yazıların büyüklerini ayarlıyor
                    color: Colors.grey,
                    // Metin üzerine gölge ekleyen kısım
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(                                                            // yazılarıda bu kodun altında yapacağım
                  'H:12° L:9°',
                  style: TextStyle(
                    fontSize: 15,                                              // yazıların büyüklerini ayarlıyor
                    color: Colors.grey,
                    // Metin üzerine gölge ekleyen kısım
                  ),
                  textAlign: TextAlign.center,
                ),



                          //günlük göstergenin kod başlangıcı buradan başlıyor
                         // bu kodun altında hava durumu göstergesini yapıyorum günlük gösterge  1.kutucukğun kod yeri
                Column(
                    children: [
                      Container(
                        color: Color(0xff164255), // Container rengi gri
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Bugün',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '2 Aralık',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xff164255),
                        height: 175, // Kartların olduğu container'ın yüksekliği
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: kartVerileri.length, // Toplam kart sayısı
                          itemBuilder: (context, index) {
                            return _buildKutucuk(
                              saat: kartVerileri[index]['saat'],
                              derece: kartVerileri[index]['derece'],
                              logo: kartVerileri[index]['logo'],
                            );
                          },
                        ),
                      ),
                                 //günlük göstergenin yarısında olan yer kalanı alt tarafta 1. kutunun yeri







                                 //haftalık göstergenin kod yeri 2 kutunun başlangıç yeri
                      Container(
                        color: Color(0xff164255), // Container rengi gri
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Haftalık',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        color: Color(0xff164255),
                        height: 175, // Kartların olduğu container'ın yüksekliği
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: kartVerileri2.length, // Toplam kart sayısı
                          itemBuilder: (context, index) {
                            return _buildKutucuk2(
                              saat: kartVerileri2[index]['gün'],
                              derece: kartVerileri2[index]['derece'],
                              logo: kartVerileri2[index]['logo'],
                            );
                          },
                        ),
                      ),
                                        // haftalık göstergenin yarısı olan yer devamı alt tarafta 2.kutucuk




                      ]
                )

            ]
            ),
          ),
        ),
      ),
    );
  }









                //günlük gösterge kutusunun kodunun devamı 1. kutu
  Widget _buildKutucuk({required String saat, required String derece, required String logo}) {
    return Container(
      margin: const EdgeInsets.all(4.0), // Daraltılan margin
      width: 80, // Daraltılan genişlik
      child: Card(
        elevation: 5,
        color: Color(0xff1F6482), // Kart rengi beyaz
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo, // Logo resmi
              width: 40, // Daraltılan logo genişliği
              height: 40, // Daraltılan logo yüksekliği
            ),
            const SizedBox(height: 4),
            Text(
              saat,
              style: TextStyle(
                fontSize: 16, // Daraltılan metin boyutu
                fontWeight: FontWeight.bold,
                color: Colors.white, // Metin rengi siyah
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '$derece °',
              style: TextStyle(
                fontSize: 12, // Daraltılan metin boyutu
                color: Colors.white, // Metin rengi gri
              ),
            ),
          ],
        ),
      ),
    );
  }
                     //günlük gösterge kodunun sonu buraya kadar  1. kutu







                               //haftalık gçstergenin devamı 2. kutucuk
  Widget _buildKutucuk2({required String saat, required String derece, required String logo}) {
    return Container(
      margin: const EdgeInsets.all(4.0), // Daraltılan margin
      width: 80, // Daraltılan genişlik
      child: Card(
        elevation: 5,
        color: Color(0xff1F6482), // Kart rengi beyaz
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              logo, // Logo resmi
              width: 40, // Daraltılan logo genişliği
              height: 40, // Daraltılan logo yüksekliği
            ),
            const SizedBox(height: 4),
            Text(
              saat,
              style: TextStyle(
                fontSize: 16, // Daraltılan metin boyutu
                fontWeight: FontWeight.bold,
                color: Colors.white, // Metin rengi siyah
              ),
            ),
            const SizedBox(height: 4),
            Text(
              '$derece °',
              style: TextStyle(
                fontSize: 12, // Daraltılan metin boyutu
                color: Colors.white, // Metin rengi gri
              ),
            ),
          ],
        ),
      ),
    );
  }
                                // haftalık gösterge kutusunun sonu 2. kutucuk

}
