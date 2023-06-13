import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:mirror_wall/provider/connection_provider.dart';
import 'package:provider/provider.dart';
import 'homepage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => ConnectProvider(),
        )
      ],
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
        ),
        home: HomePage(),
      ),
    ),
  );
}
//
// class HomePage extends StatelessWidget {
//   const HomePage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Internet Connection"),
//         centerTitle: true,
//       ),
//       body: StreamBuilder(
//           stream: Connectivity().onConnectivityChanged,
//           builder: (context, AsyncSnapshot<ConnectivityResult> snapshot) =>
//               (snapshot.data == ConnectivityResult.wifi)
//                   ? Center(
//                       child: Text("Wifi Connection"),
//                     )
//                   : Center(
//                       child: Center(
//                         child: Text("Connection fail"),
//                       ),
//                     )),
//     );
//   }
// }
