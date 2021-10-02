import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'view/add_page_view.dart';
import 'view/home_page_view.dart';

void main() => runApp(const ProviderScope(child: App()));

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Show_Text_App',
      home: const HomePage(),
      routes: <String, WidgetBuilder> {
        '/a': (context) => const AddPage(),
      },
    );
  }
}
