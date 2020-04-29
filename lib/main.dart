import 'package:flutter/material.dart';
//https://codepen.io/pardeep2914/pen/xxwLgba
void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F0F1),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  width: 185.0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: NetworkImage(
                                'https://images.unsplash.com/photo-1586471253720-3aac3399f502?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjE0NTg5fQ'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ),
                      Text(
                        'Francis Austin',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF42403F),
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () => print("hello"),
                  icon: Icon(
                    Icons.cake,
                    color: Colors.grey.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://github.com/rajayogan/flutterui-dumplings/blob/master/assets/dumpling.png?raw=true'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Text(
              'DUMPLINGS',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF808080),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Center(
            child: Text(
              '後内外場',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: const Color(0xFF808080),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Text(
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,'),
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () => print('icon'),
                    icon: Icon(Icons.remove_circle_outline),
                    color: const Color(0xFFC4C2C5),
                  ),
                  Container(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          '\$6.99',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF322F2E),
                          ),
                        ),
                        Text(
                          '1 ORDER',
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF322F2E),
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    onPressed: () => print('icon'),
                    icon: Icon(Icons.add_circle_outline),
                    color: const Color(0xFFC4C2C5),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            child: InkWell(
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SecondPage(),
                ),
              ),
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFF312F2E),
                child: Center(
                  child: Text(
                    'Add to Basket',
                    style: TextStyle(
                      fontSize: 12.0,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 3.0,
          ),
          Center(
            child: Text(
              'Get the second order in half, price',
              style: TextStyle(
                fontSize: 12.0,
                color: Color(0xFF8E8989),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      'https://images.unsplash.com/photo-1485199692108-c3b5069de6a0?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjE0NTg5fQ'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 250.0,
              color: Colors.white.withOpacity(0.6),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 35.0,
                left: 30.0,
                right: 30.0,
              ),
              child: Container(
                padding: EdgeInsets.only(left: 45.0),
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Color(0xFFFFFFFF),
                ),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.search,
                        size: 16.0,
                        color: Color(0xFF999798),
                      ),
                      hintText: 'Find something special.',
                      hintStyle: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF999798),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              top: 110.0,
              left: 30.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'The Best Food',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF322F2E),
                    ),
                  ),
                  Text(
                    'In Only 10 20 Mins',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF322F2E),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Color(0xFF7C7574),
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        '951 Rue Gleichner Coves, Suite 648',
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 225.0,
              child: Container(
                height: height - 225.0,
                width: width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0),
                    topRight: Radius.circular(40.0),
                  ),
                  color: Color(0xFFFFFFFF),
                ),
                child: ListView(
                  padding: EdgeInsets.only(left: 30.0, right: 30.0),
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'WEEKLY SPECIAL',
                          style: TextStyle(
                            color: Color(0xFFC4C2C2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            Icons.rotate_left,
                            color: Color(0xFFC4C2C2),
                          ),
                          onPressed: () => print('icon'),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          width: 150.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0xFFD1C0B9),
                                      blurRadius: 4.0,
                                      spreadRadius: 3.0,
                                    ),
                                  ],
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1535666780565-1c888b0b03c4?ixlib=rb-1.2.1&q=80&fm=jpg&crop=entropy&cs=tinysrgb&w=1080&fit=max&ixid=eyJhcHBfaWQiOjE0NTg5fQ'),
                                    fit: BoxFit.cover,
                                  ),
                                  borderRadius: BorderRadius.circular(25.0),
                                ),
                              ),
                              Text(
                                'Gerald Jacobs',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xFF353535),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'Location',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFE0AC9B),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      width: width - 30.0,
                      child: Text(
                        'Our Donuts have over 18 flavors and each of them will give you the different impression. Select any 6 donuts to package in a special price this week. ',
                        style: TextStyle(
                          fontSize: 12.5,
                          color: Color(0xFF939190),
                        ),
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Text(
                      '\$15.99',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF322F2E),
                      ),
                    ),
                    Container(
                      height: 220.0,
                      child: Image(
                        image: NetworkImage(
                            'https://github.com/rajayogan/flutterui-dumplings/blob/master/assets/donuts.png?raw=true'),
                        fit: BoxFit.cover,
                        height: 150.0,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
