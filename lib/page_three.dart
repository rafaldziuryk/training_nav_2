// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:nav_2/page_one.dart';
import 'package:nav_2/page_two.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Page Three'),
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
            ElevatedButton(
              onPressed: () => Navigator.of(context).maybePop(),
              child: const Text('maybePop : -'),
            ),
            ElevatedButton(
              onPressed: () async {
                final data = await showDialog(
                    context: context,
                    builder: (context) => Dialog(
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              const Text('Dialog'),
                              ElevatedButton(
                                  onPressed: () => Navigator.of(context).pop('Dialog'), child: const Text('Close'))
                            ],
                          ),
                        ));
                if (data != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data)));
                }
              },
              child: const Text('Show Dialog : -'),
            ),
            ElevatedButton(
              onPressed: () async {
                final data = await showDialog(
                    context: context,
                    builder: (context) => SimpleDialog(
                          title: const Text('Simple Dialog'),
                          contentPadding: const EdgeInsets.all(24),
                          children: [
                            const Text('Dialog'),
                            ElevatedButton(
                                onPressed: () => Navigator.of(context).pop('Simple Dialog'), child: const Text('Close'))
                          ],
                        ));
                if (data != null) {
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(data)));
                }
              },
              child: const Text('Show Simple Dialog : -'),
            ),
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
