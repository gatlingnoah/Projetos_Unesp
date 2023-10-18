import 'package:app_berna/pages/apresenta.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const AppSapeca());
}

class AppSapeca extends StatelessWidget {
  const AppSapeca({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: PresentationScreen(),
      ),
    );
  }
}
