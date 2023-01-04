import 'package:flutter/material.dart';

class DrawerValues extends StatelessWidget {
  final String title;
  final IconData icon;

  const DrawerValues({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 30,
      leading: Icon(
        icon,
        color: Colors.white70,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white60),
      ),
    );
  }
}
