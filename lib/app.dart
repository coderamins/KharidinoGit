import 'package:flutter/material.dart';
import 'package:kharidinocall/screens/dashboard.dart';  
    
/// This Widget is the main application widget.  
class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      home: MyNavigationBar (),  
    );  
  }  
}  
  
class MyNavigationBar extends StatefulWidget {  
  MyNavigationBar ({Key? key}) : super(key: key);  
  
  @override  
  _MyNavigationBarState createState() => _MyNavigationBarState();  
}  
  
class _MyNavigationBarState extends State<MyNavigationBar > {  
  int _selectedIndex = 0;  
  static const List<Widget> _widgetOptions = <Widget>[  
    //DashboardPage,
    Text('داشبورد', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('جستجو', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('تنظیمات', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
    Text('پروفایل', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),  
  ];  
  
  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  
  
  @override  
  Widget build(BuildContext context) {  
    return Scaffold(  
      appBar: AppBar(  
        title: const Text('مدیریت تماس با مشتریان'),  
          backgroundColor: Colors.redAccent  
      ),  
      body: Center(  
        child: _widgetOptions.elementAt(_selectedIndex),  
      ),  
      bottomNavigationBar: BottomNavigationBar(  
        items: const <BottomNavigationBarItem>[  
          BottomNavigationBarItem(  
            icon: Icon(Icons.home),  
            label: 'داشبورد',  
            backgroundColor: Colors.redAccent  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.search),  
            label: 'جستجو',  
            backgroundColor: Colors.redAccent  
          ),  
          BottomNavigationBarItem(  
            icon: Icon(Icons.settings),  
            label: 'تنظیمات',  
            backgroundColor: Colors.redAccent  
          ), 
          BottomNavigationBarItem(  
            icon: Icon(Icons.person),  
            label: 'پروفایل',  
            backgroundColor: Colors.redAccent,  
          ),  
        ],  
        type: BottomNavigationBarType.shifting,  
        currentIndex: _selectedIndex,  
        selectedItemColor: Colors.white,  
        iconSize: 40,  
        onTap: _onItemTapped,  
        elevation: 5  
      ),  
    );  
  }  
}  