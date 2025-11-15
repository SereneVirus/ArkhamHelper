import 'package:flutter/material.dart';
import 'investigator.dart';

void main() {
  final InvestigatorHelper investigatorHelper = InvestigatorHelper();
  investigatorHelper.populateInvestigators();
  investigatorHelper.printInvestigators();
  investigatorHelper.changeHealth("minh", -4);
  investigatorHelper.changeHealth("minh", 3);
  runApp(const MainApp());
}


class MainApp extends StatelessWidget {
  
  const MainApp({super.key});



  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text("korv"),
        ),
      ),
    );
  }
}
