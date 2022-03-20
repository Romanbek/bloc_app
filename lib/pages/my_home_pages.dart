import 'dart:developer' as dev;

import 'package:bloc_app/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    dev.log('build...');

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            BlocBuilder<CounterCubit, CounterCubitState>(
              builder: (context, state) {
                if (state is CubitInitialState) {
                  return const Text(' CubitInitialState! No data avaible');
                }

                if (state is CubitChangedState) {
                  return Text(
                    state.counter.toString(),
                    style: Theme.of(context).textTheme.headline4,
                  );
                }

                return const Text('Click button');
              },
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubit>().increment();
                },
                tooltip: 'Increment',
                child: const Icon(Icons.add),
              ),
              FloatingActionButton(
                onPressed: () {
                  context.read<CounterCubit>().decrement();
                },
                tooltip: 'decrement',
                child: const Icon(Icons.delete),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
