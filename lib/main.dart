import 'package:flutter/material.dart';
import 'package:my_awesome_namer/pages/MyHome.dart';
import 'package:my_awesome_namer/states/myappstate.dart';
import 'package:provider/provider.dart';

main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => MyAppState(),
        child: MaterialApp(
          title: 'namer App',
          //debugShowCheckedModeBanner: false,
          theme: ThemeData(
              useMaterial3: true,
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple)),
          home: MyHomePage(),
        ));
  }
}
