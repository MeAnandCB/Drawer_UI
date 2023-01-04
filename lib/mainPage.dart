// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              height: 300,
              child: Image(
                image: NetworkImage(
                    'https://th.bing.com/th/id/OIP.ijj6VeXqewvcUy91FuS0mwHaE8?pid=ImgDet&rs=1'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            title: Text(
              'Sundar Pichai',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              'Sundar Pichai, in full Pichai Sundararajan, (born June 10, 1972, Madras [now Chennai], Tamil Nadu, India), Indian-born American executive who was CEO of both Google, Inc. (2015– ), and its holding company, Alphabet Inc. (2019– ). As a boy growing up in Madras, Pichai slept with his brother in the living room of the cramped family home, but his father, an electrical engineer at the British multinational GEC, saw that the boys received a good education. At an early age Pichai displayed an interest in technology and an extraordinary memory, especially for telephone numbers. After earning a degree in metallurgy (B.Tech., 1993) and a silver medal at the Indian Institute of Technology Kharagpur, he was awarded a scholarship to study at Stanford University (M.S. in engineering and materials science, 1995). He remained in the United States thereafter, working briefly for Applied Materials (a supplier of semiconductor materials) and then earning an M.B.A. (2002) from the Wharton School of the University of Pennsylvania.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
