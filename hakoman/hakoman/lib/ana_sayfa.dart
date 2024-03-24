import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'oyun_detay.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Oyunlar'),
      ),
      body: ListView.builder(
        itemCount: 10, // Oyun sayısı
        itemBuilder: (context, index) {
          // Oyunları listeleme işlemleri buraya gelecek
          return ListTile(
            title: Text('Oyun ${index + 1}'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OyunDetay()),
                );
            },
          );
        },
      ),
    );
  }
}