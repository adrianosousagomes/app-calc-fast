import 'package:calc_fast/pages/home.page.dart';
import 'package:calc_fast/providers/calculator.provider.dart';
import 'package:calc_fast/utils/AppRoutes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CalculatorProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          AppRoutes.HOME_PAGE: (ctx) => const HomePage(),
        },
      ),
    );
  }
}
