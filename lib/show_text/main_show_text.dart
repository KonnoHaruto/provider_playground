import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';



void main() => runApp(const ProviderScope(child: App()));

// final myProvider = StateNotifierProvider<>();

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Show_Text_App',
      home: HomePage(),
    );
  }
}

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      body: Center(
        child: Container(
          child: const Text('テキスト', style: TextStyle(fontSize: 30),),
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}