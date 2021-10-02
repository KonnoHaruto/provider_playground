import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カンペ', style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        child: Container(
          child: const Text(
            'テキスト',
            style: TextStyle(fontSize: 30),
          ),
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
