import 'package:flutter/material.dart';
import 'package:flutter_app_cs_wk05_stateful/about_page.dart';
import 'package:flutter_app_cs_wk05_stateful/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Colors.green),
      ),
      // home: const AboutPage(),
      home: const WelcomePage(),
    );
  }
}

//---

/*
void main2() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Colors.greenAccent),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrangeAccent),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('MyApp'),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
              debugPrint('leading icon pressed');
            },
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              onPressed: () {
                debugPrint('leading icon pressed');
              },
            ),
          ],
        ),

        body: Column(
          children: [
            const Text(' my appdkdja e',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const Text('data test abc'),
            Image.network('https://ita.kmutnb.ac.th/images/ita_banner3.jpg'),

            Image.asset(
              'assets/images/computer.jpg',
              width: 120,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    debugPrint('clicked button');
                  },
                  child: const Text(
                    'OK Submit',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.favorite),
                  iconSize: 40,
                ),
              ],
            ),

            Text(
              'my mobile app',
              style: TextStyle(fontSize: 20),
            ),

//ElevatedButton(onPressed: (){}, child: Text('submit OK'))
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            debugPrint('FAB pressed');
          },
          child: const Icon(Icons.shopping_cart),
          // child: const Text(
          //   'OK',
          //   style: TextStyle(fontSize: 20),
          // ),
        ),

        // const Column(
        //   children: [
        //     Text(
        //       'Hello test CS KMUTNB',
        //       style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        //     ),
        //     Text(
        //       'my mobile app',
        //       style: TextStyle(fontSize: 20),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

*/

// void main() {
//   runApp(
//     MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme:
//           ThemeData(appBarTheme: const AppBarTheme(color: Colors.orangeAccent)),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('MyApp'),
//         ),
//         body: Text('Hello test'),
//       ),
//     ),
//   );
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.orangeAccent),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       _counter--;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'Kobkiat counter:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
// }

// ElevatedButton(
//   onPressed: () {
//     debugPrint('pressed button');
//   },
//   child: const Text(
//     'Submit',
//     style: TextStyle(fontSize: 20),
//   ),
// ),
