import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(padding: EdgeInsets.zero, children: [
        UserAccountsDrawerHeader(
          accountName: Text('Esslam Alkhmri'),
          accountEmail: Text('alkhmriesslam@gmail.com'),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                'assets/images/robbie-duncan-SxzgF4QRb_s-unsplash.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    'assets/images/boliviainteligente-ucSYe9FUwZU-unsplash.jpg'),
                fit: BoxFit.cover),
          ),
        ),
        //دخول
        ListTile(
          leading: Icon(Icons.person_2_outlined),
          title: Text('دخول'),
          onTap: () => null,
        ),
        //-----
        ListTile(
          leading: Icon(Icons.admin_panel_settings_outlined),
          title: Text('خمدمة العملاء'),
          onTap: () => null,
        ),
        //-----

        //-----
        ListTile(
          leading: Icon(Icons.settings_applications_outlined),
          title: Text('الاعدادات'),
          onTap: () => null,
        ),
        //-----
        ListTile(
          leading: Icon(Icons.logout_outlined),
          title: Text('تسجيل خروج'),
          onTap: () => null,
        ),
      ]),
    );
  }
}
