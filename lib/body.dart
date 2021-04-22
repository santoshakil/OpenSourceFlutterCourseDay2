import 'dart:async';

import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<String>(
        future: futureData(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? Text(
                  snapshot.data,
                  style: TextStyle(fontSize: 40.0),
                )
              : CircularProgressIndicator();
        },
      ),
    );
  }

  Future<String> futureData() async {
    Completer completer = Completer<String>();

    Future<String> futureString;

    String x = 'Instant Data';

    completer.complete(x);

    futureString = completer.future;

    return futureString;
  }
}
