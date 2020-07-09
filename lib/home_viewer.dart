import 'package:flutter/cupertino.dart';

import 'icon_row_item.dart';

class HomeViewer extends StatefulWidget {
  @override
  _HomeViewerState createState() => _HomeViewerState();
}

class _HomeViewerState extends State<HomeViewer> {
  List<IconRowData> getAllIcons() {
    return [
      IconRowData('add', CupertinoIcons.add),
      IconRowData('circle', CupertinoIcons.circle)
    ];
  }

  @override
  Widget build(BuildContext context) {
    final icons = getAllIcons();
    return CupertinoPageScaffold(
      child: CustomScrollView(
        semanticChildCount: icons.length,
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Cupertino Icons'),
          ),
          SliverSafeArea(
            top: false,
            minimum: const EdgeInsets.only(top: 8),
            sliver: SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index < icons.length) {
                  return IconRowItem(
                    index: index,
                    rowData: icons[index],
                    lastItem: index == icons.length - 1,
                  );
                }
                return null;
              },
            )),
          )
        ],
      ),
    );
  }
}
