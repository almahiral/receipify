import 'package:flutter/material.dart';
import 'package:receipify/pages/home_page.dart';
import 'package:receipify/pages/search_result_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipify',
      theme: ThemeData(primaryColor: Color(0xFF5ea17f)),
      home: Home(),
      // This is the theme of your application.
      //
      // Try running your application with "flutter run". You'll see the
      // application has a toolbar. Then, without quitting the app, try
      // changing the primarySwatch below to Colors.green and then invoke
      // "hot reload" (press "r" in the console where you ran "flutter run",
      // or simply save your changes to "hot reload" in a Flutter IDE).
      // Notice that the counter didn't reset back to zero; the application
      // is not restarted.
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [
    Home(),
    //Chat(),
    //Profile(),
    //others(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.filter_center_focus),
        backgroundColor: Theme.of(context).primaryColor,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 10,
          child: Container(
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Home();
                            currentTab = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.kitchen,
                              color: currentTab == 0
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                            Text(
                              'Inventory',
                              style: TextStyle(
                                color: currentTab == 0
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = SearchResult(); // GANTI!!!
                            currentTab = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.receipt_long,
                              color: currentTab == 1
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                            Text(
                              'Receipt',
                              style: TextStyle(
                                color: currentTab == 1
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  //Right Tab Bar
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Home(); // GANTI!!!
                            currentTab = 2;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.icecream,
                              color: currentTab == 2
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                            Text(
                              'Recipe',
                              style: TextStyle(
                                color: currentTab == 2
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = Home(); // GANTI!!!
                            currentTab = 3;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              color: currentTab == 3
                                  ? Theme.of(context).primaryColor
                                  : Colors.grey,
                            ),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: currentTab == 3
                                    ? Theme.of(context).primaryColor
                                    : Colors.grey,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ))),
    );

    // int selectedIndex = 0;
    // void onItemTapped(int index) {
    //   setState(() {
    //     selectedIndex = index;
    //   });
  }
}

// List<Widget> pages = <Widget>[
//   HomePage(),
//   //CategoryPage(),
// ];

  // return SafeArea(
  //   child: Scaffold(
  //     backgroundColor: Color(0xFFfafafa),
  //     body: pages[selectedIndex],
  //     bottomNavigationBar: BottomNavigationBar(
  //       backgroundColor: Colors.white,
  //       items: <BottomNavigationBarItem>[
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.home_outlined),
  //           label: 'Home',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.category_outlined),
  //           label: 'Category',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.bookmark_outlined),
  //           label: 'Saved',
  //         ),
  //         BottomNavigationBarItem(
  //           icon: Icon(Icons.person_outlined),
  //           label: 'Profile',
  //         ),
  //       ],
  //       unselectedItemColor: Theme.of(context).primaryColor,
  //       selectedItemColor: Theme.of(context).primaryColor,
  //       iconSize: 30,
  //       currentIndex: selectedIndex,
  //       onTap: onItemTapped,
  //     ),
  //   ),
  // );
  // }


// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key key, this.title}) : super(key: key);

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Invoke "debug painting" (press "p" in the console, choose the
//           // "Toggle Debug Paint" action from the Flutter Inspector in Android
//           // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
//           // to see the wireframe for each widget.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
