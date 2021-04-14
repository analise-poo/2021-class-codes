import 'package:charts_painter/chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import '../components/components.dart';
import '../../utils/utils.dart';

class CandleItem {
  CandleItem(this.min, this.max);

  final double max;
  final double min;
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<CandleItem> _value = [
    CandleItem(2, 10),
    CandleItem(1, 5),
    CandleItem(1, 7),
    CandleItem(2, 4),
    CandleItem(3, 9),
    CandleItem(2, 10),
  ];

  int _selected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: CircleAvatar(
          radius: 8,
          backgroundImage: NetworkImage(
            'https://uifaces.co/our-content/donated/KtCFjlD4.jpg',
          ),
        ),
        actions: [
          IconButton(icon: Icon(FontAwesome5Solid.equals), onPressed: null)
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TopContainer(),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .235,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 12.0, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    BPCard(
                      title: 'My average BP',
                      icon: Feather.activity,
                      systolic: 139,
                      diastolic: 80,
                    ),
                    BPCard(
                      title: 'My last BP',
                      icon: Feather.activity,
                      systolic: 155,
                      diastolic: 95,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 4, bottom: 10),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: AppColors.blue,
                                radius: 5,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Systolic',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.orange,
                                radius: 5,
                              ),
                              SizedBox(
                                width: 6,
                              ),
                              Text(
                                'Diastolic',
                                style: TextStyle(fontSize: 12),
                              )
                            ],
                          ),
                          SizedBox(
                            width: 12,
                          ),
                          Icon(
                            Icons.info,
                            size: 14,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8.0,
                        horizontal: 2.0,
                      ),
                      child: CandleChart<CandleItem>(
                        data: _value,
                        dataToValue: (CandleItem value) =>
                            CandleValue(value.min, value.max),
                        height: MediaQuery.of(context).size.height * .275,
                        width: MediaQuery.of(context).size.width,
                        chartBehaviour: ChartBehaviour(
                            isScrollable: true,
                            onItemClicked: (item) {
                              print('fui clicado!');
                              setState(() {
                                _selected = item;
                              });
                            }),
                        backgroundDecorations: [
                          HorizontalAxisDecoration(
                            showValues: true,
                            lineWidth: .5,
                            dashArray: [2, 4],
                            legendFontStyle: TextStyle(
                              color: AppColors.blue,
                              fontSize: 10,
                            ),
                            legendPosition: HorizontalLegendPosition.start,
                          ),
                        ],
                        foregroundDecorations: [
                          ValueDecoration(
                            alignment: Alignment.topCenter,
                            textStyle: TextStyle(
                              color: AppColors.blue,
                              fontSize: 10,
                            ),
                          ),
                        ],
                        chartItemOptions: BarItemOptions(
                          minBarWidth: 8.0,
                          padding: EdgeInsets.symmetric(horizontal: 22.0),
                          color: Theme.of(context)
                              .colorScheme
                              .primary
                              .withOpacity(1.0),
                          radius: BorderRadius.all(
                            Radius.circular(100.0),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          IconButton(
            icon: Icon(FontAwesome5Solid.capsules),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(Icons.mail_outline),
            onPressed: null,
          ),
        ],
      ),
      //   bottomNavigationBar: BottomNavigationBar(
      //     elevation: 0,
      //     items: [
      //       BottomNavigationBarItem(
      //         icon: Icon(FontAwesome5Solid.capsules),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.favorite_border),
      //         label: '',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.mail_outline),
      //         label: '',
      //       ),
      //     ],
      //     currentIndex: 2,
      //   ),
    );
  }
}

class BPCard extends StatelessWidget {
  const BPCard({
    Key key,
    this.icon,
    this.title,
    this.systolic,
    this.diastolic,
  }) : super(key: key);

  final IconData icon;
  final title;
  final int systolic;
  final int diastolic;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Color(0xFFF4F5F8),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '$title',
              style: TextStyle(
                color: Colors.grey[600],
              ),
            ),
            Icon(
              icon,
              color: AppColors.blue,
            ),
            RichText(
              text: TextSpan(
                text: '$systolic',
                style: TextStyle(
                  color: AppColors.blue,
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                ),
                children: [
                  TextSpan(
                    text: '/',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.grey[600],
                    ),
                    children: [
                      TextSpan(
                        text: '$diastolic',
                        style: TextStyle(
                          color: AppColors.blue,
                          fontSize: 30,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
