import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color.fromARGB(255, 0, 136, 255),
        ),
        scaffoldBackgroundColor: const Color.fromARGB(255, 0, 166, 255),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int count = 0;
  String labelText = "Click a button to begin!";

  void incrementCounter() {
    setState(() {
      count++;
      labelText = "Button has been pressed $count times.";
    });
  }

  void updateText() {
    setState(() {
      // Set the label to the text controller's value
      labelText = "Shout!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('By Justin N')),
      body: HomepageContent(
        countCallback: incrementCounter,
        shoutCallback: updateText,
        labelText: labelText,
      ),
    );
  }
}

// This widget controls a label, and two buttons.
// If the count button is pressed, the label is updated with the count.
// If the shout button is pressed, the label will say "Shout!"
class HomepageContent extends StatelessWidget {
  // Variables
  final VoidCallback countCallback;
  final VoidCallback shoutCallback;
  final String labelText;

  const HomepageContent({
    super.key,
    required this.countCallback,
    required this.shoutCallback,
    required this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(labelText),
        const Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton.filled(
                onPressed: shoutCallback,
                icon: const Icon(Icons.done_all),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton.filled(
                onPressed: countCallback,
                icon: const Icon(Icons.add),
              ),
            ),
          ],
        ),
      ],
    );
  }
}