import 'package:flutter/cupertino.dart';
import 'package:flutter_cupertino_icons/icon_details.dart';

import 'icons_list.dart';

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
      child: CupertinoButton(
        onPressed: () => Navigator.push(
            context,
            CupertinoPageRoute(
                builder: (context) => IconDetails(
                      rowData: rowData,
                    ))),
        child: Row(
          children: <Widget>[
            Icon(
              rowData.icon,
              size: 32,
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
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.normal,
                        )),
                    const Padding(padding: EdgeInsets.only(top: 8)),
                    Text(
                      'Unicode: ${rowData.icon.codePoint}',
                      style: TextStyle(
                        color: Color(0xFF8E8E93),
                        fontSize: 13,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
    if (lastItem) {
      return row;
    }
    return Column(children: <Widget>[
      row,
      Padding(
        padding: const EdgeInsets.only(
          left: 10,
          right: 10,
        ),
        child: Container(
          height: 1,
          color: Color(0xFFD9D9D9),
        ),
      )
    ]);
  }
}
