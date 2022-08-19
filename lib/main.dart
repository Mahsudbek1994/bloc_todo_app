import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:todo_app/BloC/BloC/application/application_bloc.dart';
import 'package:todo_app/data/repositories/application_repository.dart';
import 'package:todo_app/presentation/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ApplicationBloc(apiRepository: ApplicationRepository()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'ToDo',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: SplashPage()),
    );
  }
}
