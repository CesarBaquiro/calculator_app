import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/calculator/calculator_bloc.dart';
import 'package:flutter_application_1/screens/calculator_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(AppState());

//BLoC
class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CalculatorBloc>(
          create: (_) => CalculatorBloc(),
        ),
      ],
      child: const MyApp(),
    );
  }
}

//Extend for calculator_screen
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: calculator_screen());
  }
}
