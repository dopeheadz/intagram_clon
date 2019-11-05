import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('인스타그램 클론',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: SafeArea(
          child: SingleChildScrollView(
              child: Center(
        child: Column(
          children: <Widget>[
            Text(
              'Instagram에 오신 것을 환영합니다.',
              style: TextStyle(fontSize: 24.0),
            ),
            Padding(padding: EdgeInsets.all(8.0)),
            Text(
              '사진과 동영상을 보려면 팔로우하세요.',
            ),
            Padding(padding: EdgeInsets.all(10.0)),
            SizedBox(
              width: 300.0,
//              height: 500.0,
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(1.0),
                  child: Column(
                    children: <Widget>[
                      Padding(padding: EdgeInsets.all(10.0)),
                      SizedBox(
                        width: 80.0,
                        height: 80.0,
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://animals.net/wp-content/uploads/2018/09/Meerkat-1-650x425.jpg'),
                        ),
                      ),
                      Padding(padding: EdgeInsets.all(8.0)),
                      Text(
                        'meerkat@afreeca.com',
                        style: TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Padding(padding: EdgeInsets.all(2.0)),
                      Text('어캣 미', style: TextStyle(fontSize: 18.0),),
                      Padding(padding: EdgeInsets.all(2.0)),
                      Row(
//                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network('https://assets.spikeatschool.co.nz/files/243e18de42a469f6/profile_area_category_profile/photos/27/thumb/0021.jpg', fit: BoxFit.cover,),
                          ),
                          Padding(padding: EdgeInsets.all(2.0),),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network('https://www.africanparks.org/sites/default/files/styles/large_480x480_crop/public/teaser_image/2017-05/Robert_Jan.jpg?itok=AOambZwF', fit: BoxFit.cover,),
                          ),
                          Padding(padding: EdgeInsets.all(2.0),),
                          SizedBox(
                            width: 80,
                            height: 80,
                            child: Image.network('http://35472b2f26eb5568d584-b183217507757d4e2da554baf2e632b9.r37.cf1.rackcdn.com/content/people/andrew-shaffer/images/thumbnail-128dae40ed0311e891d98bd1517dab74_Andrew-S_2018_1500x1500.jpg', fit: BoxFit.cover,),
                          ),
                        ],
                      ),
                      Padding(padding: EdgeInsets.all(2.0)),
                      Text('FaceBook 친구', style: TextStyle(fontSize: 16.0),),
                      Padding(padding: EdgeInsets.all(2.0)),
                      RaisedButton(
                        child: Text('팔로우'),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () {},
                      ),
                      Padding(padding: EdgeInsets.all(10.0)),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ))),
    );
  }
}
