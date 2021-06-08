import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_adaptive_ui/widgets/widgets.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key}) : super(key: key);

  @override
  _OverviewPageState createState() => _OverviewPageState();
}

class _OverviewPageState extends State<OverviewPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(24),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                SearchBar(),
                Spacer(),
                OutlinedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.dashboard),
                  label: Text('Change view'),
                  style: OutlinedButton.styleFrom(
                    primary: theme.disabledColor,
                    padding: EdgeInsets.symmetric(
                      vertical: 8,
                      horizontal: 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                ),
                BellButton(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.ellipsis_vertical,
                    color: theme.disabledColor,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Text(
              'Overview',
              style: theme.textTheme.headline3?.copyWith(
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
          ),
          Expanded(
            child: StaggeredGridView.count(
              crossAxisCount: 6,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              staggeredTiles: [
                StaggeredTile.count(2,6),
                StaggeredTile.count(4,6),
                StaggeredTile.count(4,6),
                StaggeredTile.count(2,6),
              ],
              shrinkWrap: true,
              children: [
                SizedBox(
                  height: 200,
                  child: Card(
                    color: theme.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                  ),
                ),
                Card(
                  color: theme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                ),
                Card(
                  color: theme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                ),
                Card(
                  color: theme.cardColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24)),
                ),
              ],
            ),
          ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(
          //     horizontal: 24,
          //     vertical: 16,
          //   ),
          //   child: Wrap(
          //     crossAxisAlignment: WrapCrossAlignment.end,
          //     spacing: 8,
          //     runSpacing: 8,
          //     children: [
          //       Container(
          //         margin: EdgeInsets.only(
          //           bottom: 16,
          //         ),
          //         width: 300,
          //         height: 180,
          //         child: Card(
          //           color: theme.primaryColor,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(24)),
          //         ),
          //       ),
          //       Container(
          //         width: 500,
          //         height: 240,
          //         child: Card(
          //           color: theme.cardColor,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(24)),
          //         ),
          //       ),
          //       Container(
          //         width: 600,
          //         height: 300,
          //         child: Card(
          //           color: theme.cardColor,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(24)),
          //         ),
          //       ),
          //       Container(
          //         width: 200,
          //         height: 300,
          //         child: Card(
          //           color: theme.cardColor,
          //           shape: RoundedRectangleBorder(
          //               borderRadius: BorderRadius.circular(24)),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
