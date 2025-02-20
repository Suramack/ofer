
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ofer/route/navigation_service.dart';
import 'package:ofer/route/routes.dart';
import 'package:ofer/src/theme/theme.dart';


void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Ofer',
      scaffoldMessengerKey: NavigationService.scaffoldMessengerKey,
      theme: Themes.lightTheme(),
      routerConfig: routerConfig,
      debugShowCheckedModeBanner: false,
    );
  } 
}
