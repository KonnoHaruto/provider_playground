import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:state_notifier/state_notifier.dart';

part 'state.freezed.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StateNotifierProvider<_Controller, Counter>(
        create: (context) => _Controller(),
        child: const MyHomePage(),
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

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<_Controller>();
    return Scaffold(
      body: Center(
        child: Text(
          '${context.select((Counter c) => c.count)}',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        child: const Icon(Icons.add),
      ),
    );
  }
}

@freezed
abstract class Counter with _$Counter {
  const factory Counter({required int count}) = _Counter;
}
