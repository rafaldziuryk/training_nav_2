import 'package:flutter/material.dart';
import 'package:nav_2/page_three.dart';
import 'package:nav_2/page_two.dart';

class PageOne extends StatelessWidget {
  const PageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page One'),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PageOne(),
            )),
            child: const Text('push : Page One'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const PageOne(),
            )),
            child: const Text('pushReplacement : Page One'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PageTwo(),
            )),
            child: const Text('push : Page Two'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const PageTwo(),
            )),
            child: const Text('pushReplacement : Page Two'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PageThree(),
            )),
            child: const Text('push : Page Three'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => const PageThree(),
            )),
            child: const Text('pushReplacement : Page Three'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('pop : -'),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
