import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino_icons/icons_list.dart';

class IconDetails extends StatelessWidget {
  final IconRowData rowData;

  const IconDetails({Key key, this.rowData}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text(rowData.name),
      ),
      child: SafeArea(
          child: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              Icon(
                rowData.icon,
                size: 24,
              ),
              Icon(
                rowData.icon,
                size: 48,
              ),
              Icon(
                rowData.icon,
                size: 96,
              ),
              Icon(
                rowData.icon,
                size: 192,
              ),
              Text(rowData.icon.codePoint.toString())
            ],
          ),
        ),
      )),
    );
  }
}
