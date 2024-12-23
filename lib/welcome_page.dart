import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  String _output = '';
  final _textController = TextEditingController();
  // final _name = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyApp1'),
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            debugPrint('leading icon pressed');
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.info),
            onPressed: () {
              debugPrint('leading icon pressed');
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              'hello',
              style: TextStyle(fontSize: 26),
            ),
            TextField(
              controller: _textController,
              decoration: InputDecoration(
                hintText: 'Enter Name',
                labelText: 'Name',
              ),
            ),
            Text('$_output'),
            ElevatedButton(
                onPressed: () {
                  String input = _textController.text;
                  double? number = double.tryParse(input);  //
                  // double usd = double.tryParse(_textController.text) ?? 0.0; //
                  double usd = double.parse(_textController.text) ;
                  setState(() {
                    _output = 'hi,  $input .., good job';
                  });
                  debugPrint('pressed button .. $input');
                },
                child: Text(
                  'OK button',
                  style: TextStyle(fontSize: 24),
                ))
          ],
        ),
      ),
    );
  }
}
