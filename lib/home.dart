import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'localization.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final localization = Localization();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: Observer(
        builder: (_) => Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              localization.userAddress,
              textAlign: TextAlign.center,
            ),
            Text(
              localization.necklaceAddress,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          localization.getUserCurrentLocation();
          localization.getNecklaceCurrentLocation(-3.104290, -60.010059);
        },
        child: Icon(Icons.near_me),
      ),
    );
  }
}
