import 'package:flutter/material.dart';
import 'package:nav_2/page_one.dart';
import 'package:nav_2/page_three.dart';
import 'package:nav_2/page_two.dart';

class PageTwo extends StatelessWidget {
  const PageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Two'),
      ),
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PageOne(),
            )),
            child: Text('push : Page One'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => PageOne(),
            )),
            child: Text('pushReplacement : Page One'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PageTwo(),
            )),
            child: Text('push : Page Two'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => PageTwo(),
            )),
            child: Text('pushReplacement : Page Two'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => PageThree(),
            )),
            child: Text('push : Page Three'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pushReplacement(MaterialPageRoute(
              builder: (context) => PageThree(),
            )),
            child: Text('pushReplacement : Page Three'),
          ),
          ElevatedButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text('pop : -'),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
