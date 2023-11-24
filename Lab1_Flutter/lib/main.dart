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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Header'),
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
  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    foregroundColor: Colors.black87, backgroundColor: Colors.cyan[600],
    minimumSize: const Size(88, 36),
    padding: const EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2)),
    ),
  );


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Column(

          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Center(child: Image.network('https://picsum.photos/250?image=9')),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () { },
                child: const Text('TextButton'),
              ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () { },
                  child: const Text('TextButton'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[ElevatedButton(
                style: raisedButtonStyle,
                onPressed: () { },
                child: const Text('TextButton'),
              ),
                ElevatedButton(
                  style: raisedButtonStyle,
                  onPressed: () { },
                  child: const Text('TextButton'),
                ),
              ],
            ),
            Row(
              children: [
                const Text('Email:'),
                const SizedBox(width: 10), // Add some space between the text and input field
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: 'Enter your email',
                    ),
                  ),
                ),
              ],
            ),

          ],
        ),
    );
  }
}

/*Text(
'$_counter',
style: Theme.of(context).textTheme.headlineMedium,
)*/