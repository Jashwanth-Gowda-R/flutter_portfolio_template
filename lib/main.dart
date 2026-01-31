import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:url_strategy/url_strategy.dart';

import 'package:my_portfolio_app/firebase_options.dart';
import 'package:my_portfolio_app/routes/routes.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Portfolio App',
      // home: LayoutBuilder(
      //   builder: (context, constraints) {
      //     if (constraints.maxWidth > 1200) {
      //       return const LandingPageWeb();
      //     } else {
      //       return const LandingPageMobile();
      //     }
      //   },
      // ),
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
      initialRoute: '/',
    );
  }
}
