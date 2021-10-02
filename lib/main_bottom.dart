import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  static const String _title = 'Greate_Buttom_App';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      theme: ThemeData(primarySwatch: Colors.grey),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 表示中のWidgetを取り出すためのint型のmutableなstored property（＾ω＾）
  int _selectedIndex = 0;

  // 表示するWidgetの一覧
  static final List<Widget> _pageList = [
    const CustomPage(pannelColor: Colors.yellow, title: 'Home'),
    const CustomPage(pannelColor: Colors.blue, title: 'Settings'),
    const CustomPage(pannelColor: Colors.brown, title: 'Search'),
  ];

  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Greate_Bottom_App'),
      ),
      body: _pageList[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Serach',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        backgroundColor: Colors.grey,
        selectedItemColor: Colors.blueAccent,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class CustomPage extends StatelessWidget {
  final Color pannelColor;
  final String title;

  // ignore: use_key_in_widget_constructors
  const CustomPage({required this.pannelColor, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(
              color: pannelColor,
              borderRadius: const BorderRadius.all(Radius.circular(20.0))),
          child: Center(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 60,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      decoration: const BoxDecoration(color: Colors.black),
    );
  }
}
