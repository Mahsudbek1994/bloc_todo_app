import 'package:flutter/material.dart';
import 'package:todo_app/presentation/add_task/add_task.dart';
import 'package:todo_app/presentation/applications_screen.dart';
import 'package:todo_app/presentation/filter/filter.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static const List<Widget> pages = [
    ApplicationsScreen(),
    Text('in progress',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
    Text('performed',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
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
          title: Row(
        children: [
          const Text('Task'),
          const Spacer(),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const FilterPage(),
                );
              },
              icon: Icon(Icons.filter_list)),
          IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => const AddTask(),
                );
              },
              icon: Icon(Icons.add)),
        ],
      )),
      body: Center(
        child: pages.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
              label: 'All',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings_backup_restore_outlined),
              label: 'in progress',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.done_outline),
              label: 'performed',
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          iconSize: 24,
          onTap: _onItemTapped,
          elevation: 5),
    );
  }
}

class _widgetOptions {
  static elementAt(int selectedIndex) {}
}
