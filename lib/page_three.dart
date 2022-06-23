import 'package:flutter/material.dart';
import 'package:nav_2/page_one.dart';
import 'package:nav_2/page_two.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page Three'),
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
          ElevatedButton(
            onPressed: () async {
              final data = await showDialog(
                  context: context,
                  builder: (context) => Dialog(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Text('Dialog'),
                            ElevatedButton(onPressed: () => Navigator.of(context).pop('Dialog'), child: Text('Close'))
                          ],
                        ),
                      ));
              if (data != null) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data)));
              }
            },
            child: Text('Show Dialog : -'),
          ),
          ElevatedButton(
            onPressed: () async {
              final data = await showDialog(
                  context: context,
                  builder: (context) => SimpleDialog(
                        title: Text('Simple Dialog'),
                        contentPadding: EdgeInsets.all(24),
                        children: [
                          Text('Dialog'),
                          ElevatedButton(
                              onPressed: () => Navigator.of(context).pop('Simple Dialog'), child: Text('Close'))
                        ],
                      ));
              if (data != null) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data)));
              }
            },
            child: Text('Show Simple Dialog : -'),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
