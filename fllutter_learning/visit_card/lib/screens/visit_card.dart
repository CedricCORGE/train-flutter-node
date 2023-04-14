import 'package:flutter/material.dart';

import '../ressources/constances.dart';

import 'detail.dart';

class VisitCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff052555),
        appBar: AppBar(
          title: const Text('Ma carte de visite'),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        ),
        body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    return Center(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const CircleAvatar(
                  radius: 70.0,
                  backgroundImage: AssetImage('assets/portrait.png'),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.transparent,
                    child: Text(
                      nomCarte,
                      style: styleNomCarte,
                    ),
                  ),
                ),
                const Card(
                  margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
                  color: Colors.transparent,
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      statusCarte,
                      textAlign: TextAlign.center,
                      style: styleStatusCarte,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Details()),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.blueGrey)),
                  child: const Text('En savoir plus',
                      style: TextStyle(
                        color: Colors.white70,
                      )),
                )
              ],
            ),
          ),
        );
  }
}
