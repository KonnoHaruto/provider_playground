import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StateNotifierProvider<_Controller, Counter>(
        create: (context) => _Controller(),
        child: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<_Controller>();
    return const Scaffold(
      body: Center(
        child: Text(
          'increment'
        ),
      ),
    );
  }
}

class _Controller extends StateNotifier<Counter> {
  _Controller() : super(const Counter(count: 0));

  void increment() => state = state.copyWith(
        count: state.count + 1,
      );
}

//model
@freezed
abstract class Counter with _$Counter {
  //required最強
  const factory Counter({required int count}) = _Counter;
}
