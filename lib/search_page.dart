import 'package:flutter/cupertino.dart';
import 'package:flutter_cupertino_icons/icon_row_item.dart';
import 'package:flutter_cupertino_icons/icons_list.dart';
import 'search_bar.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController _controller;
  FocusNode _focusNode;
  String _terms = '';

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController()..addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    setState(() {
      _terms = _controller.text;
    });
  }

  Widget _buildSearchBox() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: SearchBar(controller: _controller, focusNode: _focusNode),
    );
  }

  @override
  Widget build(BuildContext context) {
    final results = IconRowData.search(_terms);
    return DecoratedBox(
        decoration: const BoxDecoration(
          color: Color(0xfff0f0f0),
        ),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              _buildSearchBox(),
              Expanded(
                child: ListView.builder(
                  itemBuilder: (context, index) => IconRowItem(
                    index: index,
                    rowData: results[index],
                    lastItem: index == results.length - 1,
                  ),
                  itemCount: results.length,
                ),
              )
            ],
          ),
        ));
  }
}
