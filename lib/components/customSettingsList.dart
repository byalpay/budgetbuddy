import 'package:budgetbuddy/theme/theme.dart';
import 'package:flutter/material.dart';


class CustomList extends StatefulWidget {
  const CustomList({super.key});

  @override
  State<CustomList> createState() => _CustomListState();
}

class _CustomListState extends State<CustomList> {
  bool _notificationEnabled = true;
  bool darkmodeEnabled = false;


  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Bildirimler'),
            trailing: Switch(
              value: _notificationEnabled,
              onChanged: (value) {
                setState(() {
                  _notificationEnabled = value;
                });
              },
            ),
            onTap: () {
              // Notifications ended
            },
          ),
        ListTile(
          leading: Icon(Icons.dark_mode),
          title: Text('Gece Modu'),
          trailing: Switch(
            activeColor: Colors.black,
            value: darkmodeEnabled,
            onChanged: (value) {
              setState(() {
                darkmodeEnabled = value;
              });
            },
          ),
          onTap: () {
            if(darkmodeEnabled==false){
              theme : lightTheme;
            }
            else{
              theme : darkTheme;
            }
          },
        ),
      ],
    );
  }
}
