import 'package:cr4_lesson_14/my_translations.dart';
import 'package:cr4_lesson_14/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      translations: MyTranslations(),
      locale: Locale('en', 'US'),
      title: 'Flutter Demo',
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'hello'.tr,
              style: TextStyle(fontSize: 30),
            ),
            Divider(),
            Divider(),
            TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('ar', 'SA'));
                },
                child: Text('Change to Arabic')),
            TextButton(
                onPressed: () {
                  Get.updateLocale(Locale('en', 'US'));
                },
                child: Text('Change to English')),
            Divider(),
            Divider(),
            Text(
              'message'.tr,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
                Get.snackbar('My Snackbar', _counter.toString());
              },
              child: Text('Show Snackbar'),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  _counter++;
                });
                Get.defaultDialog(
                  title: 'My Dialog',
                  middleText: _counter.toString(),
                );
              },
              child: Text('Show Dialog'),
            ),
            TextButton(
              onPressed: () {
                Get.to(SecondScreen());
              },
              child: Text('My Second Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
