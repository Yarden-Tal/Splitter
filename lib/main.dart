import 'package:flutter/material.dart';
import 'package:splitter/config/colors.dart';
import 'package:splitter/widgets/bill_section.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splitter',
      theme: ThemeData(
          colorScheme:
              ColorScheme.fromSeed(seedColor: (SplitterColors.greyishCyan)),
          useMaterial3: true,
          fontFamily: ""),
      home: const MyHomePage(title: 'SPLI\nTTER'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int bill = 0;
  int chosenTipPercentage = 0;
  int numOfPeople = 0;
  int tipPerPerson = 0;
  int totalPerPerson = 0;

  List<int> tipOptions = [5, 10, 15, 25, 50];

  // int calcTotalPerPerson() {
  //   return
  // }

  // int calcTipPerPerson() {
  //   return
  // }

  void resetAll() {
    bill = 0;
    chosenTipPercentage = 0;
    numOfPeople = 0;
    tipPerPerson = 0;
    totalPerPerson = 0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            BillSection()
            // Tip radio section
            // People input sectiona
            // Results section
          ],
        ),
      ),
    );
  }
}
