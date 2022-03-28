import 'package:flutter/material.dart';
import 'package:flutter_form/animated_form.dart';
import 'package:flutter_form/form1.dart';
//import 'package:flutter_form_bloc/flutter_form_bloc.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: animated(
        title: '',
      ),
    );
  }
}
