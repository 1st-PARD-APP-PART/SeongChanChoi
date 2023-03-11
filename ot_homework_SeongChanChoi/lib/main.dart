import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HW1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // 제목을 argument로 넘겨줌
      home: const MyHomePage(title: '21800729 최성찬'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // argument를 contstructor로 받음
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  // 버튼을 누르면 10씩 증가 function
  void _incrementCounter() {
    setState(() {
      _counter = _counter + 10;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // argument로 받은 title을 appbar에 넣어줌
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // 화면 중앙에 텍스트를 띄워줌
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // 텍스트를 두개 넣어줌
          children: <Widget>[
            const Text(
              '재밌게 살자',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
