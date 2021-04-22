import 'dart:async';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: StreamBuilder<int>(
        stream: streamData(),
        builder: (context, snapshot) {
          return snapshot.hasData
              ? Text(
                  snapshot.data.toString(),
                  style: TextStyle(fontSize: 40.0),
                )
              : CircularProgressIndicator();
        },
      ),
    );
  }

  Stream<int> streamData() {
    int count = 0;

    var stream = Stream.periodic(Duration(seconds: 1), (_) => count++);

    return stream;
  }
}
