import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MeasureCard extends StatelessWidget {
  final DateTime date;
  final int index;
  final int value;

  MeasureCard({this.date, this.index = 0, this.value = 0});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      color: Colors.grey[200],
      elevation: 0,
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 30),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('${DateFormat('d/MM/y').format(date)}'),
            Text('${DateFormat.Hm().format(date)}'),
          ],
        ),
        leading: Text('$index'),
        trailing: Text('$value'),
      ),
    );
  }
}
