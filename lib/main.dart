import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timer_flutter_bloc/bloc/bloc.dart';
import 'package:timer_flutter_bloc/ticker.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TimerBloc _timerBloc = TimerBloc(ticker: Ticker());

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.purple,
        accentColor: Colors.purpleAccent,
        brightness: Brightness.dark,
      ),
      title: 'Timer - BLoC',
      home: BlocProvider(
        bloc: _timerBloc,
        child: Timer(), // TODO: implement widget
      ),
    );
  }

  @override
  void dispose() {
    _timerBloc.dispose();
    super.dispose();
  }
}
