// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'DrawerValues.dart';
import 'mainPage.dart';

class HomePage extends StatelessWidget {
  List DrawerList = [
    ['Dashboard', Icons.space_dashboard_outlined],
    ['Leads', Icons.leak_add_sharp],
    ['Clients', Icons.group_remove_outlined],
    ['Projects', Icons.rocket_launch_outlined],
    ['Patients', Icons.hail_rounded],
    ['Subscription', Icons.subject_sharp],
    ['Payments', Icons.payments],
    ['Users', Icons.person],
    ['Library', Icons.layers_clear_outlined]
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: SliderDrawer(
        sliderOpenSize: MediaQuery.of(context).size.width * .8,
        slider: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: <Color>[
                Color.fromARGB(255, 223, 78, 99),
                Color.fromARGB(255, 252, 187, 122),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Column(
                  children: [
                    SizedBox(
                      height: 200,
                      child: Center(
                        child: ListTile(
                          title: Text(
                            'Sundar Pichai',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white70),
                          ),
                          subtitle: Text(
                            'CEO of Alphabet Inc.',
                            style: TextStyle(color: Colors.white70),
                          ),
                          leading: CircleAvatar(
                            radius: 30,
                            backgroundImage: NetworkImage(
                              'https://i.gadgets360cdn.com/large/sundar_pichai_bloomberg_1626243612506.jpg',
                            ),
                          ),
                        ),
                      ),
                    ),
                    ListView.builder(
                      padding: EdgeInsets.only(left: 20),
                      shrinkWrap: true,
                      itemCount: DrawerList.length,
                      itemBuilder: (BuildContext context, int index) =>
                          DrawerValues(
                              title: DrawerList[index][0],
                              icon: DrawerList[index][1]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          Color(0xffff624f),
                        ),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    side: BorderSide(
                                      color: Color(0xffff624f),
                                    )))),
                    onPressed: () {},
                    child: Text(
                      'Logout',
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
        child: MainPage(),
      )),
    );
  }
}
