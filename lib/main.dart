import 'package:bloc_app/bloc/counter_bloc.dart';
import 'package:bloc_app/cubit/counter_cubit.dart';
import 'package:bloc_app/pages/bloc_example_page.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //

          primarySwatch: Colors.blueGrey),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CounterCubit(),
          ),
          BlocProvider(
            create: (context) => CounterBloc(),
          ),
        ],
        child: const BlocExamplePage(),
      ),
    );
  }
}
