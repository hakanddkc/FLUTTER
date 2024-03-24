import 'package:flutter/material.dart';

import 'ana_sayfa.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kullanıcı Girişi'),
      ),
      backgroundColor: Colors.red, // Arka plan rengi siyah olarak ayarlandı
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(
                labelText: 'Kullanıcı Adı',
              ),
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Şifre',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnaSayfa()),
                );
              },
              child: Text('Giriş Yap'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Şifremi unuttum ekranına yönlendirme işlemleri burada yapılabilir
              },
              child: Text('Şifremi Unuttum'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Kayıt ekranına yönlendirme işlemleri burada yapılabilir
              },
              child: Text('Yeni Hesap Oluştur'),
            ),
          ],
        ),
      ),
    );
  }
}