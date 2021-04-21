import 'package:blood_preassure_app/utils/utils.dart';
import 'package:charts_painter/chart.dart';
import 'package:flutter/material.dart';

class MyTrendsPage extends StatelessWidget {
  static String pageName = 'my-trends-page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Text(
          'My Trends',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: AppColors.blue,
          ),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.amberAccent,
            height: MediaQuery.of(context).size.height * .25,
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [Text('Date'), Text('Time')],
                  ),
                  leading: Text('Nr'),
                  trailing: Text('Syst'),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text('20/04/2021'), Text('10:17')],
                    ),
                    leading: Text('1'),
                    trailing: Text('128'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text('20/04/2021'), Text('10:17')],
                    ),
                    leading: Text('1'),
                    trailing: Text('128'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text('20/04/2021'), Text('10:17')],
                    ),
                    leading: Text('1'),
                    trailing: Text('128'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text('20/04/2021'), Text('10:17')],
                    ),
                    leading: Text('1'),
                    trailing: Text('128'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text('20/04/2021'), Text('10:17')],
                    ),
                    leading: Text('1'),
                    trailing: Text('128'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text('20/04/2021'), Text('10:17')],
                    ),
                    leading: Text('1'),
                    trailing: Text('128'),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(8),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  color: Colors.grey[200],
                  elevation: 0,
                  child: ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 6, horizontal: 30),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [Text('20/04/2021'), Text('10:17')],
                    ),
                    leading: Text('1'),
                    trailing: Text('128'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
