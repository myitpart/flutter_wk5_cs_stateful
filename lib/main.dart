import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyApp'),
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
            IconButton(
              icon: const Icon(Icons.info),
              onPressed: () {
                debugPrint('leading icon pressed');
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Text(
                  'Hello test',
                  style: TextStyle(fontSize: 22),
                ),
                const Text('CS App week 3a'),
                const TextField(
                  decoration: InputDecoration(
                    // กำหนดสไตล์รูปแบบ
                    border: OutlineInputBorder(), // มีเส้นกรอบ
                    labelText: 'User Name', // ข้อความกำกับ
                    hintText: 'Enter Your Name', // ข้อความแนะนำ (Hint)
                  ),
                ),
                SizedBox(height: 10, width: 10),
                const TextField(
                  obscureText: true, // สำหรับกรอกรหัสผ่าน
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter Password',
                  ),
                ),

                Container(
                  // margin: EdgeInsets.all(10),
                  // padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      // boxShadow: [
                      //   BoxShadow(
                      //     // color: Colors.grey,
                      //     color: Color(0xFFaaaaaa),
                      //     spreadRadius: 2,
                      //     blurRadius: 6,
                      //     offset: Offset(0, 0),
                      //   )
                      // ],
                      ),
                  alignment: Alignment.centerRight,
                  child: const Text(
                    'History:',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),

                // Row(
                //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //   children: [
                //     Image.network('https://picsum.photos/250?image=9',
                //         height: 100),
                //     Image.network('https://picsum.photos/250?image=9',
                //         height: 100),
                //     Image.network('https://picsum.photos/250?image=9',
                //         height: 100),
                //   ],
                // ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.end,
                //   children: [
                //     Icon(Icons.calendar_month, size: 80),
                //     Icon(Icons.ev_station, size: 80),
                //     Icon(Icons.wallet, size: 80),
                //   ],
                // ),

                Card(
                  color: Colors.lightBlue[100],
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 80),
                    child: Column(
                      children: [
                        Text('1,230 THB'),
                        // Image.asset(
                        //   'assets/images/computer.jpg',
                        //   width: 120,
                        // )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 14,
                ),

                //       const TextField(
                // // obscureText: true,
                //         decoration: InputDecoration(
                //           border: OutlineInputBorder(),
                //           labelText: 'Name',
                //           hintText: 'Enter Name',
                //         ),
                //       ),

                // Container(
                //     decoration: BoxDecoration(
                //       color: Color.fromARGB(255, 7, 129, 229),
                //       borderRadius: BorderRadius.all(Radius.circular(8)),
                //       // BorderRadius.only(
                //       //     topLeft: Radius.circular(12),
                //       //     topRight: Radius.circular(12)),
                //     ),
                //     // alignment: Alignment.centerLeft,
                //     child: Padding(
                //       padding: const EdgeInsets.symmetric(
                //           horizontal: 12.0, vertical: 4),
                //       child: Text(
                //         'History:',
                //         style: TextStyle(
                //           fontSize: 20,
                //         ),
                //       ),
                //     )),
                SizedBox(
                  height: 20,
                ),
                Image.network(
                    'https://ita.kmutnb.ac.th/images/ita_banner3.jpg'),

                const SizedBox(
                  height: 14,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/images/computer.jpg',
                      width: 120,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('macbook pro 2025 cpu',
                              style: TextStyle(fontSize: 20)),
                          Card(
                            color: Colors.lightBlue[100],
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                  Text('1,230 THB'),
                                ],
                              ),
                            ),
                          ),
                          Text('spec 1 spec 2..',
                              style: TextStyle(fontSize: 20)),
                        ],
                      ),
                    ),
                  ],
                ),
                //
                IconButton(
                  icon: const Icon(Icons.favorite_border),
                  onPressed: () {
                    debugPrint('leading icon pressed');
                  },
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.ev_station),
                    Expanded(
                      child: Text('Charging date-time วันเวลาการชาร์จรถ',
                          style: TextStyle(fontSize: 20)),
                    ),
                    Text('12 Dec 24', style: TextStyle(fontSize: 20)),
                  ],
                ),
                Text(
                    'Charging date-time Charging date-timeCharging date-timeCharging date-time',
                    style: TextStyle(fontSize: 20)),
                // Container(
                //   decoration: BoxDecoration(
                //     color: Colors.green[400],
                //     borderRadius: const BorderRadius.all(
                //       Radius.circular(14),
                //     ),
                //     boxShadow: [
                //       BoxShadow(
                //         color: Colors.grey.withOpacity(0.9),
                //         spreadRadius: 2,
                //         blurRadius: 6,
                //         offset: const Offset(0, 0),
                //       )
                //     ],
                //   ),
                //   height: 80, width: 160,
                //   // color: Colors.green[400],
                //   child: const Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     children: [
                //       SizedBox(
                //         height: 2,
                //       ),
                //       Text(
                //         '155.2',
                //         style: TextStyle(
                //             fontSize: 32,
                //             color: Colors.white,
                //             fontWeight: FontWeight.bold),
                //       ),
                //     ],
                //   ),
                // ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {}, child: Icon(Icons.shopping_cart)),
      ),
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
