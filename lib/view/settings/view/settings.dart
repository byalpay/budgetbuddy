import 'package:budgetbuddy/theme/theme.dart';
import 'package:budgetbuddy/components/customAppBar.dart';
import 'package:budgetbuddy/components/customDrawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import '../../../language/l10n.dart';
import '../service/themeSwitch.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool notificationEnabled = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: L10n.all,
      theme: darkModeEnabled ? darkTheme : lightTheme,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: CustomAppBar(
            key: GlobalKey(),
            title: "Ayarlar",
        ),
        drawer: CustomDrawer(),
        body: ListView(
          children: [
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Bildirimler'),
              trailing: Switch(
                value: notificationEnabled,
                onChanged: (value) {
                  setState(() {
                    notificationEnabled = value;
                  });
                },
              ),
              onTap: () {
                // Gerekirse bu alana dokunma işlevini ekleyebilirsiniz
              },
            ),
            ListTile(
              leading: Icon(Icons.dark_mode),
              title: Text('Gece Modu'),
              trailing: Switch(
                activeColor: Colors.black,
                value: darkModeEnabled,
                onChanged: (bool value) {
                  setState(() {
                    darkModeEnabled = value;
                  });
                },
              ),
              onTap: () {
                toggleTheme();
              },
            ),
          ],
        ),
      ),
    );
  }
}
