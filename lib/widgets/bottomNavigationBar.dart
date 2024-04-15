import 'package:budgetbuddy/bills.dart';
import 'package:budgetbuddy/mainpage.dart';
import 'package:flutter/material.dart';
import '../financePage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex=1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => FinancePage()));
    } else if (index == 1) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
    } else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => Bills()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.black54, // Container'ın arka plan rengini de ayarladık
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedIndex, // Şu anki seçili indeksi göstermek için kullanılır
          onTap: _onItemTapped, // İşlevi atama
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money, color: Colors.white),
              label: 'Gelir-Gider',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.white),
              label: 'Anasayfa',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.receipt,
                color: Colors.white,
              ),
              label: 'Faturalarım',
            ),
          ],
        ),
      ),
    );
  }
}
