import 'package:flutter/material.dart';

import 'screens/visit_card.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Carte de visite',
      home: VisitCard(),
    );
  }
}
