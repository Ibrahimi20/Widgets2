import 'package:flutter/material.dart';
import 'package:learn3/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int currentindex = 0;

  /* static const List bodyContent = [
    Icon(Icons.person),
    Icon(Icons.home),
    Icon(Icons.search),
  ];*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Center(child: Text("My Drawer"))),
      drawer: Drawer(
        width: 200,
        child: ListView(
          children: const <Widget>[
            DrawerHeader(
              curve: Curves.fastLinearToSlowEaseIn,
              duration: Duration(seconds: 9),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.orangeAccent, Colors.lightBlue])),
              child: Center(child: Text('Drawer Header')),
            ),
            ListTile(
              title: Center(child: Text("Item 2")),
            ),
            ListTile(
              title: Center(child: Text("Item 2")),
            ),
          ],
        ),
      ),
      body: const MyPageView(),
      //const MySlider(),
      //MyStackPositioned(),
      //MyStepper(),
      //const MyGridView(),
      //const MyGridTile(),
      //const MyGridView(),
      //const MySwitchd(),
      //const MyRadioListTile(),
      //const MyPageView(), horizotal scrol between widget in the body
      //const MyTabBar(),
      //MyIndexedStack(),
      //MyWidget(),ListView.separated => List Tile
      //bodyContent.elementAt(currentindex),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.person), label: "person"),
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'search'),
          NavigationDestination(icon: Icon(Icons.alarm), label: 'alarm'),
        ],
        selectedIndex: currentindex,
        onDestinationSelected: (value) {
          setState(() {
            currentindex = value;
          });
        },
      ),
    );
  }
}

/* 
body: Builder(builder: (context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: ElevatedButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            child: const Text("Open Drawer")),
      ),
    ],
  );
}),*/
