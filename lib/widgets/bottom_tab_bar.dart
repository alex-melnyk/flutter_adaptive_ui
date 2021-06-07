import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomTabBar extends StatelessWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: const EdgeInsets.all(0),
      child: Container(
        decoration: BoxDecoration(
          color: theme.cardColor,
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(24),
          ),
          boxShadow: [
            BoxShadow(
              color: theme.shadowColor.withOpacity(0.5),
              blurRadius: 8,
            ),
          ],
        ),
        child: SafeArea(
          top: false,
          child: SizedBox(
            height: 60,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.home,
                    color: theme.primaryColor,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.chart_bar_square),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.mail),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.person_crop_rectangle),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.doc_plaintext),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
