import 'package:blood_preassure_app/models/models.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MeasureCard extends StatelessWidget {
  final Measure measure;
  final int index;

  MeasureCard({this.measure, this.index = 1});

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
            Text('${DateFormat('d/MM/y').format(measure.date)}'),
            Text('${DateFormat.Hm().format(measure.date)}'),
          ],
        ),
        leading: Text('$index'),
        trailing: Text('${measure.value}'),
      ),
    );
  }
}
