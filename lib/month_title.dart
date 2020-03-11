import 'package:flutter/material.dart';
import 'package:scrolling_years_calendar/utils/dates.dart';

class MonthTitle extends StatelessWidget {
  const MonthTitle({
    @required this.month,
    @required this.isCurrentMonth,
    this.monthNames,
  });

  final int month;
  final List<String> monthNames;
  final bool isCurrentMonth;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: isCurrentMonth
          ? Text(
              getMonthName(month, monthNames: monthNames),
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontFamily: 'OpenSans',
                fontWeight: FontWeight.bold
              ),
              maxLines: 1,
              overflow: TextOverflow.fade,
              softWrap: false,
            )
          : Text(
              getMonthName(month, monthNames: monthNames),
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white60,
                fontFamily: 'OpenSans',
              ),
              maxLines: 1,
              overflow: TextOverflow.fade,
              softWrap: false,
            ),
    );
  }
}
