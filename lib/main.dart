import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const App(),
    );
  }
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Demo();
  }
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.person_add),
          ),
        ],
        title: Center(child: Text('Vs code')),
      ),
      drawer: const Drawer(
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/a.png"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    elevation: 20.0,
                    primary: Colors.black,
                    shadowColor: Colors.green),
                onPressed: () {},
                child: Text('press this button'),
              ),
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.person),
                label: Text('sign in here')),
            TextButton(
                style: TextButton.styleFrom(primary: Colors.blueAccent),
                onPressed: () {},
                child: Text('press the text')),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.person_add,
                color: Colors.redAccent,
                size: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
