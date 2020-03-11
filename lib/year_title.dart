import 'package:flutter/material.dart';

class YearTitle extends StatelessWidget {
  const YearTitle(
    this.year,
  );

  final int year;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        year.toString(),
        style: TextStyle(
          fontSize: 30.0,
          color: Colors.white,
          fontFamily: 'OpenSans',
          fontWeight: FontWeight.w300
        ),
      ),
    );
  }
}
