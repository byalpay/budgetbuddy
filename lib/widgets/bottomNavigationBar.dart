import 'package:flutter/material.dart';

class NavbarApp extends StatefulWidget {
  @override
  _NavbarApp createState() => _NavbarApp();
}

class _NavbarApp extends State<NavbarApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hoş geldin'),
      ),
      body: const Center(),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Ana Sayfa',
            backgroundColor: Colors.black54
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Gelirler',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_off),
            label: 'Giderler',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            label: 'Faturalar',
            backgroundColor: Colors.orange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ayarlar',
            backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}