import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'provider_playground',
      home: TopPage(),
    );
  }
}

//いくつものProviderを宣言できる
final appBarProvider = Provider((ref) => '値の受け渡し');
final textProvider = Provider((ref) => 'Container');

class TopPage extends ConsumerWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final text = watch(appBarProvider);
    final data = watch(textProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(color: Colors.blue),
          child: Text(data),
        ),
      ),
    );
  }
}
