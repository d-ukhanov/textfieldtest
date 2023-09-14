import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
  late final TextEditingController _textController;

  @override
  void initState() {
    super.initState();

    _textController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(
        child: SizedBox(
          width: 500,
          child: TextFormField(
            controller: _textController,
            autofillHints: const [AutofillHints.email],
          ),
        ),
      ),
    );
  }
}
