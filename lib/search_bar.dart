import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    @required this.controller,
    @required this.focusNode,
  });

  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
          color: Color(0xffe0e0e0), borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 8,
          vertical: 4,
        ),
        child: Row(
          children: <Widget>[
            CupertinoButton(
              onPressed: () => Navigator.pop(context),
              child: Icon(
                CupertinoIcons.left_chevron,
                size: 18,
                color: Color.fromRGBO(128, 128, 128, 1),
              ),
            ),
            Expanded(
              child: CupertinoTextField(
                placeholder: 'Search',
                controller: controller,
                focusNode: focusNode,
                clearButtonMode: OverlayVisibilityMode.editing,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.normal,
                ),
                cursorColor: Color.fromRGBO(0, 122, 255, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
