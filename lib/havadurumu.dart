import 'package:flutter/material.dart';

class havadurumu extends StatelessWidget {
  havadurumu({Key? key}) : super(key: key);

  // Kartlar için örnek veri listesi
  final List<Map<String, dynamic>> kartVerileri = [
    {'saat': '12:00', 'derece': '25', 'logo': 'resimler/küçükbulut.png'},
    {'saat': '15:30', 'derece': '22', 'logo': 'resimler/küçükbulut.png'},
    {'saat': '18:45', 'derece': '20', 'logo': 'resimler/küçükbulut.png'},
    {'saat': '21:15', 'derece': '18', 'logo': 'resimler/küçükbulut.png'},
    {'saat': '23:45', 'derece': '15', 'logo': 'resimler/küçükbulut.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Berat Sayfası'),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.grey[300], // Container rengi gri
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Bugün',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '2 Aralık',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.grey[300],
            height: 200, // Kartların olduğu container'ın yüksekliği
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
        ],
      ),
    );
  }

  Widget _buildKutucuk({required String saat, required String derece, required String logo}) {
    return Container(
        margin: const EdgeInsets.all(4.0), // Daraltılan margin
        width: 80, // Daraltılan genişlik
        child: Card(
            elevation: 5,
            color: Colors.white, // Kart rengi beyaz
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
                    color: Colors.black, // Metin rengi siyah
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  '$derece °',
                  style: TextStyle(
                    fontSize: 12, // Daraltılan metin boyutu
                    color: Colors.grey, // Metin rengi gri
                  ),
                ),
              ],
            ),
            ),
        );
    }
}