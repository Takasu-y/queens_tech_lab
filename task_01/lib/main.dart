import 'package:flutter/material.dart';
import 'package:task_01/pages/dummy.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() {
    print("create state");
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      print("set state. counterをインクリメント");
      _counter++;
    });

    nextpage();
  }

  void nextpage() async {
    //ダミー画面へ遷移
    await Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) {
      return const DummyPage();
    }));
  }

  @override
  void initState() {
    super.initState();
    print("call init state");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("call did change dependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("call build");
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
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

  @override
  void deactivate() {
    super.deactivate();
    print("call deactivate");
  }

  @override
  void dispose() {
    super.dispose();
    print("call dispose");
  }
}
