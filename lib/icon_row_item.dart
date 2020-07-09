import 'package:flutter/cupertino.dart';

class IconRowData {
  final IconData icon;
  final String name;

  const IconRowData(this.name, this.icon);
}

class IconRowItem extends StatelessWidget {
  const IconRowItem({this.rowData, this.index, this.lastItem});
  final IconRowData rowData;
  final int index;
  final lastItem;

  @override
  Widget build(BuildContext context) {
    final row = SafeArea(
      top: false,
      bottom: false,
      minimum: const EdgeInsets.only(
        left: 16,
        top: 8,
        bottom: 8,
        right: 8,
      ),
      child: Row(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Icon(rowData.icon),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(rowData.name,
                      style: TextStyle(
                        color: Color.fromRGBO(0, 0, 0, 0.8),
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.normal,
                      ))
                ],
              ),
            ),
          )
        ],
      ),
    );
    if (lastItem) {
      return row;
    }
    return Column(children: <Widget>[
      row,
      Padding(
        padding: const EdgeInsets.only(
          left: 100,
          right: 16,
        ),
        child: Container(
          height: 1,
          color: Color(0xFFD9D9D9),
        ),
      )
    ]);
  }
}
