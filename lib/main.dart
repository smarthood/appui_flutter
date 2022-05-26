import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'test app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const Violet50 = const Color(0xffeaf4fe);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Violet50,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                "https://playcontestofchampions.com/wp-content/uploads/2021/11/champion-spider-man-morales-720x720.jpg"),
          ),
        ),
        centerTitle: true,
        title: Text(
          "Home",
          style: TextStyle(color: const Color(0xff043E6C)),
        ),
        actions: [
          new IconButton(
            icon: new Icon(Icons.login),
            color: const Color(0xff043E6C),
            onPressed: () {},
          ),
          Padding(
            padding: EdgeInsets.only(right: 20.0),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        child: Material(
          child: SizedBox(
            width: double.infinity,
            height: 60.0,
          ),
          color: const Color(0xff043E6C),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.black,
        ),
        onPressed: () {},
        backgroundColor: Color(0xff00DEC3),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              //1st Image of Slider

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(6.0, 20.0, 6.0, 6.0),
                color: const Color(0xffeaf4fe),
                width: 500.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                      child: Title(
                          color: Colors.black,
                          child: Text(
                            "50:00",
                            style: TextStyle(fontSize: 25),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8.0, 20.0, 8.0, 8.0),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(300.0),
                          child: Image.network(
                            'https://www.imagediamond.com/blog/wp-content/uploads/2020/06/cartoon-boy-images-4.jpg',
                            width: 200,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(6.0, 20.0, 6.0, 6.0),
                color: const Color(0xffeaf4fe),
                width: 500.0,
              ),

              //4th Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(6.0, 20.0, 6.0, 6.0),
                color: const Color(0xffeaf4fe),
                width: 500.0,
              ),

              //5th Image of Slider
              Container(
                margin: EdgeInsets.fromLTRB(6.0, 20.0, 6.0, 6.0),
                color: const Color(0xffeaf4fe),
                width: 500.0,
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              enlargeCenterPage: true,
              height: 750.0,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }
}
