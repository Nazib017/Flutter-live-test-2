import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Text Styling App",
          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),
        ),
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Flutter Text Styling",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Experiment with text styles",
              style: TextStyle(fontSize: 19, fontStyle: FontStyle.italic),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("You clicked the button!")));
              },
              child: Text("Click Me"),

            ),
            SizedBox(height: 10,),
            RichText(text:TextSpan(
              text: "Welcome to ",
              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 19),
              children: <TextSpan>[
                TextSpan(
                  text: "Flutter!",
                  style: TextStyle(color: Colors.blueAccent,fontSize: 19,fontWeight: FontWeight.w400)
                )
              ]

            ))
          ],
        ),
      ),
    );
  }
}
