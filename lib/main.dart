import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gpetest/bloc/classes2bloc/classes2_bloc.dart';
import 'package:gpetest/bloc/classes_bloc.dart';
import 'package:gpetest/screens/testscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ClassesBloc(),
          ),
          BlocProvider(
            create: (context) => Classes2Bloc(),
          ),
        ],
        child: const TestPage(),
      ),
    );
  }
}
