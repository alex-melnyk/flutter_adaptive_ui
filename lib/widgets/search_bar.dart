import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconTheme.merge(
            data: IconThemeData(
              color: theme.disabledColor,
            ),
            child: Icon(CupertinoIcons.search),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                color: theme.disabledColor,
              ),
              child: Text('Search'),
            ),
          ),
        ],
      ),
    );
  }
}
