import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BellButton extends StatelessWidget {
  const BellButton({
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return IconButton(
      onPressed: onPressed,
      icon: Stack(
        children: [
          Center(
            child: Icon(
              CupertinoIcons.bell_fill,
              color: theme.disabledColor,
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: const EdgeInsets.only(
                right: 4,
                top: 4,
              ),
              padding: const EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: theme.canvasColor,
                shape: BoxShape.circle,
              ),
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  color: theme.primaryColor,
                  shape: BoxShape.circle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
