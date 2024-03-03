import 'package:flutter/material.dart';
import 'package:assignment_1/screen/task_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plan IT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(


        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
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

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to',
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
            Text(
              'Plan IT\n',
              style:
              TextStyle(fontSize: 36, fontWeight: FontWeight.bold, color: Colors.black),
            ),
            SizedBox(height: 20),
            Text(
              '\n \n \n \nYour Personal task management\nand planning solution',
              textAlign: TextAlign.center,
              style:
              TextStyle(fontSize: 18, color: Colors.black),
            ),
            SizedBox(height: 40),
            ElevatedButton(
                onPressed: (){
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context) {return ListPage();} ));
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => TaskPage()));
                },
                child:
                Text('Let’s get started',
                    style: TextStyle(color : Colors.white, fontSize: 15),),
                    style : ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black),
                      padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 55,vertical: 15)),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),

                )
            )
          ],
        ),
      ),
    );
  }
}
