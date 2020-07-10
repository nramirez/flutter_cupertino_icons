import 'package:flutter/cupertino.dart';
import 'package:flutter_cupertino_icons/icons_list.dart';

import 'icon_row_item.dart';
import 'search_page.dart';

class HomeViewer extends StatefulWidget {
  @override
  _HomeViewerState createState() => _HomeViewerState();
}

class _HomeViewerState extends State<HomeViewer> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        semanticChildCount: IconRowData.allIcons.length,
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            largeTitle: Text('Cupertino Icons'),
            trailing: CupertinoButton(
              child: Icon(
                CupertinoIcons.search,
                size: 24,
              ),
              onPressed: () => {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => SearchPage(),
                    ))
              },
            ),
          ),
          SliverSafeArea(
            top: false,
            minimum: const EdgeInsets.only(top: 8),
            sliver: SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                if (index < IconRowData.allIcons.length) {
                  return IconRowItem(
                    index: index,
                    rowData: IconRowData.allIcons[index],
                    lastItem: index == IconRowData.allIcons.length - 1,
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
