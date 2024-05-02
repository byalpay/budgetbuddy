import 'package:flutter/material.dart';

import '../view/home/main-page/view/cardsPage.dart';
import '../view/home/email-sender/emailSender.dart';
import '../view/home/main-page/view/mainPage.dart';
import '../view/settings/view/settings.dart';


class CustomDrawer extends StatefulWidget {
  const CustomDrawer({super.key});

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<CustomDrawer> {


  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("accountName"),
              accountEmail: Text("accountEmail")),
          ListTile(
            leading: Icon(Icons.home),
            title: const Text('Ana Sayfa'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>  MainPage(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.person_outline),
            title: const Text('Kişisel Bilgileri Düzenle'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.credit_card),
            title: const Text('Kredi Kartlarım'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Cards()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: const Text('Ayarlar'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Settings(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback_outlined),
            title: const Text('Geri Bildirimler'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const EmailSender()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.update),
            title: const Text('Güncellemeler'),
            onTap: () {},
          ),

          SizedBox(height: 250),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text('Çıkış'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
