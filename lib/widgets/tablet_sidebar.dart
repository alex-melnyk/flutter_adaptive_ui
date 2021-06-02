import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TabletSidebar extends StatelessWidget {
  TabletSidebar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SafeArea(
      child: Container(
        width: double.maxFinite,
        padding: const EdgeInsets.all(24),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 16,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.purple,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Center(
                    child: Icon(
                      CupertinoIcons.speedometer,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 16,
                left: 16,
              ),
              child: DefaultTextStyle.merge(
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
                child: Text('Financial CRM'),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ListItem(
                    icon: Icon(CupertinoIcons.home),
                    title: Text('Overview'),
                    isActive: true,
                  ),
                  ListItem(
                    icon: Icon(CupertinoIcons.chart_bar_square),
                    title: Text('Statistics'),
                  ),
                  ListItem(
                    icon: Icon(CupertinoIcons.mail),
                    title: Text('Messages'),
                  ),
                  ListItem(
                    icon: Icon(CupertinoIcons.person_crop_rectangle),
                    title: Text('Profile'),
                  ),
                  ListItem(
                    icon: Icon(CupertinoIcons.doc_plaintext),
                    title: Text('Documents'),
                  ),
                ],
              ),
            ),
            Spacer(),
            Container(
              height: 280,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text('BANNER'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem extends StatelessWidget {
  const ListItem({
    Key? key,
    required this.icon,
    required this.title,
    this.isActive = false,
  }) : super(key: key);

  final Widget icon;
  final Widget title;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 16.0,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconTheme.merge(
            data: IconThemeData(
              size: 16,
              color: isActive ? Colors.purple : null,
            ),
            child: icon,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 16.0,
            ),
            child: DefaultTextStyle.merge(
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w600,
                color: isActive ? Colors.purple : null,
              ),
              child: title,
            ),
          ),
        ],
      ),
    );
  }
}
