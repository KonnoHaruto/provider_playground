import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'dialog app',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Show you dialog'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //showDialog<T> Tはダイアログの表示結果の戻り値
          showDialog<void>(
              context: context,
              builder: (context) {
                final mediaQuery = MediaQuery.of(context);
                return MediaQuery(
                    data: mediaQuery.copyWith(
                      viewInsets: mediaQuery.viewInsets +
                          const EdgeInsets.symmetric(horizontal: 100),
                    ),
                    child: const AlertDialog(
                      content: Text('Hello Dialog!'),
                    ));
              });
        },
        child: const Icon(Icons.info),
      ),
    );
  }
}
