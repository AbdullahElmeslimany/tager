import 'package:flutter/material.dart';

import 'package:timeline_tile/timeline_tile.dart';

class TimeLimeCustome extends StatelessWidget {
  final bool first;
  final bool last;
  final bool colorsline;
  final String title;

  const TimeLimeCustome({
    super.key,
    required this.first,
    required this.last,
    required this.colorsline,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    Color teal = Colors.teal;
    Color grey = Colors.grey;
    return TimelineTile(
      axis: TimelineAxis.horizontal,
      isFirst: first,
      isLast: last,
      beforeLineStyle: LineStyle(
        color: colorsline == true ? teal : grey,
      ),
      indicatorStyle: IndicatorStyle(
          width: 5,
          color: colorsline == true ? teal : grey,
          iconStyle: IconStyle(iconData: Icons.done, color: Colors.white)),
      endChild: SizedBox(
        width: MediaQuery.sizeOf(context).width / 4.7,
        child: Center(
          child: Text(title),
        ),
      ),
    );
  }
}
