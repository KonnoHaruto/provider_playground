import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
      body: ElevatedButton(
        child: Center(
          child: Container(
            child: const Text('Happy Dialog!', style: TextStyle(fontSize: 50),),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          ),
        ),
        onPressed: () {
          showDialog<void>(
            context: context,
            builder: (context) {
            final mediaQuery = MediaQuery.of(context);
            return MediaQuery(
              data: mediaQuery.copyWith(
                viewInsets: mediaQuery.viewInsets +
                const EdgeInsets.symmetric(horizontal: 50, vertical: 300),
              ),
            child: const AlertDialog(
              content: Center(child: Text('Happy Dialog!!', style: TextStyle(fontSize: 30),),),
              backgroundColor: Colors.yellow,
            ));
          });
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //showDialog<T> Tはダイアログの表示結果の戻り値
          showDialog<void>(
              context: context,
              builder: (context) {
                final mediaQuery = MediaQuery.of(context);
                return MediaQuery(
                    /*data: MediaQuery.of(context).copyWith(
                      viewInsets: MediaQuery.of(context).viewInsets +
                          const EdgeInsets.symmetric(horizontal: 100),
                    ),*/
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
