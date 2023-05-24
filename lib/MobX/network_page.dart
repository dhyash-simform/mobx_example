// import 'dart:developer';
//
// import 'package:connectivity_plus/connectivity_plus.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_mobx/flutter_mobx.dart';
// import 'package:mobx_example/MobX/pages/home_page.dart';
// import 'package:mobx_example/MobX/pages/offline_page.dart';
// import 'package:mobx_example/main.dart';
//
// class NetworkPage extends StatelessWidget {
//   const NetworkPage({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Observer(builder: (_) {
//       log('Status: ${connectivityCheck.connectivityStream.status}',
//           name: 'Connectivity Status');
//       log('${connectivityCheck.connectivityStream.value}',
//           name: 'Connectivity Value');
//       return connectivityCheck.connectivityStream.value ==
//               ConnectivityResult.none
//           ? const OfflinePage()
//           : const HomePage();
//     });
//   }
// }
