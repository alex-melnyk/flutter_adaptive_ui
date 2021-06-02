import 'package:flutter/material.dart';
import 'package:flutter_adaptive_ui/widgets/widgets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          final isTablet = constraints.maxWidth > 850;

          return Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (isTablet)
                    Flexible(
                      child: TabletSidebar(),
                    ),
                  Flexible(
                    flex: 3,
                    child: Container(
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          '${constraints.maxWidth}x${constraints.maxHeight}',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              if (!isTablet)
                Align(
                  alignment: Alignment.bottomCenter,
                  child: BottomTabBar(),
                ),
            ],
          );
        },
      ),
    );
  }
}
