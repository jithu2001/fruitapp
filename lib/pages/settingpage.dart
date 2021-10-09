import 'package:flutter/material.dart';
import 'package:fruitapp/pages/notificationsetting.dart';
import 'package:fruitapp/pages/profile.dart';
import 'package:fruitapp/pages/privacy.dart';
import 'package:fruitapp/pages/about.dart';
import 'package:fruitapp/pages/help.dart';

class Settingpage extends StatelessWidget {
  const Settingpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          'Setting',
          style: TextStyle(color: Colors.black, fontSize: 24),
        ),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          InkWell(
            child: ListTile(
              title: Text(
                'Account',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.person,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profilepage()),
                );
              },
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text(
                'Notificatioms',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.notifications_active_outlined,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ntfn()),
                );
              },
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text(
                'Appearance',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.remove_red_eye_outlined,
                color: Colors.black,
              ),
              onTap: null,
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text(
                'Privacy & Security',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.lock_outline,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Privay()),
                );
              },
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text(
                'Help & Support',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.help_outline,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Help()),
                );
              },
            ),
          ),
          InkWell(
            child: ListTile(
              title: Text(
                'About',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              leading: Icon(
                Icons.file_copy_outlined,
                color: Colors.black,
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AboutPage()),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
