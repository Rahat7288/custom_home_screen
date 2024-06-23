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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        // color: Colors.amber,
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: Stack(
          fit: StackFit.loose,
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: SafeArea(
                child: ListView.builder(
                    itemCount: 40,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                          leading: const Icon(Icons.list),
                          trailing: const Text(
                            "GFG",
                            style: TextStyle(color: Colors.green, fontSize: 15),
                          ),
                          title: Text("List item $index"));
                    }),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Container(
                height: 50,
                width: MediaQuery.of(context).size.width * .95,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.circular(24),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
