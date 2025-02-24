import 'package:flutter/material.dart';
import 'main.dart'; // Import the main.dart file

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ກ່ຽວກັບພວກເຮົາ',
          style: TextStyle(fontFamily: 'PhetsarathOT'),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => const HomeScreen()),
              (Route<dynamic> route) => false,
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: [
         
                   const SizedBox(height: 16),
                  buildCard(
                    'https://store.annymarket.shop/public/image/teacher.jpeg',
                    'ອາຈານສອນ:ປທ ສິດທິພອນ ພັນດາລາ',
                  ),
                const SizedBox(height: 16),
                  buildCard(
                    'https://store.annymarket.shop/public/image/salermxay.png',
                    'ທ້າວ: ສະເຫຼີມໄຊ ສຸວັນນະເຄື່ອງແກ້ວ',
                  ),
                  const SizedBox(height: 16),
                  buildCard(
                    'https://store.annymarket.shop/public/image/sychan.png',
                    'ທ້າວ ສີຈັນ ກົມໄຊຍະຢະອາຣີ',
                  ),
                  const SizedBox(height: 16),
                  buildCard(
                    'https://store.annymarket.shop/public/image/ded.png',
                    'ພຣະ ສຸດທິເດດ ວິລະວັນ',
                  ),
                 
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildCard(String imageUrl, String description) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              imageUrl,
              width: 100,
              height: 120,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 100,
                  height: 120,
                  color: Colors.grey,
                  child: Icon(Icons.error, color: Colors.red),
                );
              },
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                description,
                style: const TextStyle(fontSize: 16, fontFamily: 'PhetsarathOT'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
