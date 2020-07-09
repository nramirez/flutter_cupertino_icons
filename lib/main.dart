import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_viewer.dart';

void main() => runApp(CupertinoIconAppViewer());

class CupertinoIconAppViewer extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Cupertino Icons',
      home: HomeViewer(),
    );
  }
}
