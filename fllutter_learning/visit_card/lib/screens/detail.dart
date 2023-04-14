import 'package:flutter/material.dart';

import '../ressources/constances.dart';

class Details extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff052555),
      appBar: AppBar(
        title: const Text('En savoir plus'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: Center(
          child: ListView(
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  child: const CircleAvatar(
                    radius: 70.0,
                    backgroundImage: AssetImage('assets/portrait.png'),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                const Card(
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      description,
                      textAlign: TextAlign.center,
                      style: styleDescription,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      Icons.mail,
                      color: Colors.white,
                      size: 35.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      mail,
                      style: styleMail,
                    )
                  ],
                )
              ]),
      ),
    );
  }
}
