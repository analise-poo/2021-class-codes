import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List _mountains = [
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
    'Mountain ',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[50],
        elevation: 0,
        title: Text(
          'Discover Trip',
          style: TextStyle(
            fontSize: 18,
            color: Color(0xff074072),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: null,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              height: 120,
              width: 285,
            ),
            SizedBox(
              height: 36,
            ),
            FavoritesMountains(
              mountains: _mountains,
            ),
            SizedBox(
              height: 36,
            ),
            MountainFeedback(),
            MountainFeedback(),
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  const BottomBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: .4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: Container(
          height: 64,
          width: MediaQuery.of(context).size.width * .5,
          color: Colors.grey,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(Icons.explore), onPressed: null),
              IconButton(icon: Icon(Icons.search), onPressed: null),
              IconButton(icon: Icon(Icons.calendar_today), onPressed: null),
              IconButton(icon: Icon(Icons.face), onPressed: null),
            ],
          ),
        ),
      ),
    );
  }
}

class MountainFeedback extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ListTile(
            title: Text('David'),
            subtitle: Text('Lorem ipsum blah blah blah'),
            leading: CircleAvatar(
              backgroundColor: Colors.blueGrey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0),
            child: Row(
              children: [
                Container(
                  color: Colors.grey,
                  height: MediaQuery.of(context).size.width * .45 + 20,
                  width: MediaQuery.of(context).size.width * .45 - 3,
                ),
                SizedBox(
                  width: 20,
                ),
                Column(
                  children: [
                    Container(
                      color: Colors.grey,
                      height: MediaQuery.of(context).size.width * (.45 / 2),
                      width: MediaQuery.of(context).size.width * .45,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      color: Colors.grey,
                      height: MediaQuery.of(context).size.width * (.45 / 2),
                      width: MediaQuery.of(context).size.width * .45,
                    ),
                  ],
                )
              ],
            ),
          )
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 16.0),
          //   child: Row(
          //     children: [
          //       CircleAvatar(
          //         backgroundColor: Colors.blueGrey,
          //       ),
          //       Column(
          //         crossAxisAlignment: CrossAxisAlignment.start,
          //         children: [
          //           Text('David'),
          //           Text('Lorem ipsum blah blah blah'),
          //         ],
          //       )
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

class FavoritesMountains extends StatelessWidget {
  final List _mountains;

  const FavoritesMountains({Key key, List mountains}) : _mountains = mountains;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Favorites Mountain in Indonesian',
                style: TextStyle(
                  fontSize: 12,
                  color: Color(0xff074072),
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Show all',
                style: TextStyle(
                  fontSize: 9,
                  color: Color(0xff074072),
                ),
              )
            ],
          ),
        ),
        Container(
          height: 144,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: _mountains.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 128,
                  width: 128,
                  color: Colors.deepOrange,
                  child: Center(
                    child: Text('${_mountains[index]} $index'),
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

// 285 x 112 - iPhone SE (320 x 568) - (1080 x 2340)
//  568 ---- 2340
//  112 ---- x
//  262080 = 568x
// x = 461,408450704
//
// 568 ----- 100
// 112 ----- x
// proporção
// 0,19 - altura
// 0,890625 - largura - 961
