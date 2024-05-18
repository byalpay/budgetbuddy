import 'package:flutter/material.dart';
import '../view/home/main-page/view/financePage.dart';
import '../view/home/main-page/view/homePage.dart';
import '../view/receipt/view/receiptsPage.dart';

class CustomNavbar extends StatefulWidget {
  const CustomNavbar({super.key});

  @override
  State<CustomNavbar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<CustomNavbar> {
  int _selectedIndex=1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    if (index == 0) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => FinancePage()));
    } else if (index == 1) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
    } else if (index == 2) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => ReceiptsPage()));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: _selectedIndex, // Şu anki seçili indeksi göstermek için kullanılır
        onTap: _onItemTapped, // İşlevi atama
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Gelir-Gider',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Anasayfa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt,),
            label: 'Faturalarım',
          ),
        ],
    );
  }
}
