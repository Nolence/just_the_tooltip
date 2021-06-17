import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:just_the_tooltip/just_the_tooltip.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark(),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark,
      ),
      child: Scaffold(
        body: SizedBox.expand(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(flex: 2),
              JustTheTooltip(
                tailLength: 20.0,
                preferredDirection: AxisDirection.up,
                margin: EdgeInsets.all(16.0),
                borderRadius: BorderRadius.circular(16.0),
                offset: 0,
                child: Material(
                  color: Colors.grey.shade800,
                  shape: const CircleBorder(),
                  elevation: 4.0,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                content: Padding(
                  padding: const EdgeInsets.all(8.0),
                  // child: Text(
                  //   'hello this ',
                  // ),
                  child: RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      'hello this is a lot of text and i don\'t think thats such a bad thing, hello this is a lot of text and i don\'t think thats such a bad thing',
                    ),
                  ),
                ),
              ),
              Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}

// ListView.builder(
//   itemCount: 30,
//   itemBuilder: (context, index) {
//     if (index == 15) {
//       return JustTheTooltip(
//         preferredDirection: AxisDirection.left,
//         child: Material(
//           color: Colors.blue,
//           shape: CircleBorder(),
//           elevation: 4.0,
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Icon(
//               Icons.touch_app,
//               color: Colors.white,
//             ),
//           ),
//         ),
//         // This is necessary as otherwise the column would only be
//         // constrained by the amount of vertical space
//         content: IntrinsicHeight(
//           child: Column(
//             children: [
//               Container(
//                 height: 120,
//                 color: Colors.blue,
//                 width: double.infinity,
//               ),
//               const SizedBox(height: 8),
//               Text(
//                 'Quia ducimus eius magni voluptatibus ut veniam ducimus. Ullam ab qui voluptatibus quos est in. Maiores eos ab magni tempora praesentium libero. Voluptate architecto rerum vel sapiente ducimus aut cumque quibusdam. Consequatur illo et quos vel cupiditate quis dolores at.',
//               ),
//             ],
//           ),
//         ),
//       );
//     }

//     return ListTile(title: Text('Item $index'));
//   },
// ),
