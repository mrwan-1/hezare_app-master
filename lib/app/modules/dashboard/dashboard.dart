import 'package:flutter/material.dart';
import 'package:hezare_app/app/modules/home/home.dart';
import 'package:hezare_app/core/util/RImport.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  final List _screens = [
    const Home(),
    const Chat(),
    const Reservation(),
    const Services(),
    const MyAccount(),
  ];

  void _updateIndex(int value) {
    setState(() {
      _currentIndex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: _updateIndex,
        selectedItemColor: Colors.blue[700],
        selectedFontSize: 13,
        unselectedFontSize: 13,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            label: "الرئيسية",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "الدردشة",
            icon: Icon(Icons.email),
          ),
          BottomNavigationBarItem(
            label: "الحجوزات",
            icon: Icon(Icons.calendar_month),
          ),
          BottomNavigationBarItem(
            label: "الخدمات",
            icon: Icon(Icons.home_repair_service_rounded),
          ),
          BottomNavigationBarItem(
            label: "حسابي",
            icon: Icon(Icons.account_circle_outlined),
          ),
        ],
      ),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "chat page",
        style: R.fonts.headline,
      )),
    );
  }
}

class Reservation extends StatelessWidget {
  const Reservation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Reservation page",
        style: R.fonts.headline,
      )),
    );
  }
}

class Services extends StatelessWidget {
  const Services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "Services page",
        style: R.fonts.headline,
      )),
    );
  }
}

class MyAccount extends StatelessWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text(
        "MyAccount page",
        style: R.fonts.headline,
      )),
    );
  }
}
