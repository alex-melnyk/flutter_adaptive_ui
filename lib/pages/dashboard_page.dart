import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_ui/pages/overview_page.dart';
import 'package:flutter_adaptive_ui/widgets/widgets.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animationContent;

  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      duration: Duration(milliseconds: 250),
      vsync: this,
    );

    _animationContent = Tween<double>(
      begin: 1,
      end: 0.66666666,
    ).animate(_animationController);
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constraints) {
          final isTablet = constraints.maxWidth > 850;
          final _animationSidebar = Tween<double>(
            begin: constraints.maxWidth,
            end: constraints.maxWidth * 0.75,
          ).animate(_animationController);

          return Stack(
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  if (isTablet)
                    Flexible(
                      flex: 1,
                      child: TabletSidebar(),
                    ),
                  Flexible(
                    flex: 3,
                    child: SafeArea(
                      child: AnimatedBuilder(
                        animation: _animationController,
                        builder: (_, child) {
                          return FractionallySizedBox(
                            widthFactor: isTablet ? _animationContent.value : 1.0,
                            child: child!,
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.all(isTablet ? 16 : 0),
                          decoration: BoxDecoration(
                            color: theme.canvasColor,
                            borderRadius: BorderRadius.circular(isTablet ? 16 : 0),
                          ),
                          child: OverviewPage(),
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
              if (isTablet)
                AnimatedBuilder(
                  animation: _animationController,
                  builder: (_, child) {
                    return Positioned(
                      top: 0,
                      left:  _animationSidebar.value,
                      bottom: 0,
                      child: child!,
                    );
                  },
                  child: SafeArea(
                    child: Container(
                      width: constraints.maxWidth * 0.25,
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: const EdgeInsets.only(
                                  top: 16,
                                ),
                                width: 64,
                                height: 64,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  color: theme.disabledColor,
                                ),
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  CupertinoIcons.settings,
                                ),
                              ),
                              IconButton(
                                onPressed: () => _animationController.reverse(),
                                icon: Icon(
                                  CupertinoIcons.clear,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 24,
                            ),
                            child: DefaultTextStyle.merge(
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize: 24,
                              ),
                              child: Text('Robert\nWashington'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 16,
                            ),
                            child: DefaultTextStyle.merge(
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: theme.disabledColor,
                              ),
                              child: Text('Financial analytics'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}
