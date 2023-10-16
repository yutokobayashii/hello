import 'package:flutter/material.dart';
import 'package:zefyrka/zefyrka.dart';


void main() {
  runApp(const MyApp());
}

ZefyrController _controller = ZefyrController();
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: Scaffold(
        body: Column(
          children: [
            SizedBox(height: 200,),
            ZefyrToolbar.basic(controller: _controller),
            Expanded(
              child: ZefyrEditor(
                controller: _controller,
              ),
            ),
          ],
        ),
      )

    );
  }
}
