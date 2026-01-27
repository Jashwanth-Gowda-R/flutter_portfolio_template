import 'package:flutter/material.dart';
import 'package:my_portfolio_app/mobile/landing_page_mobile.dart';
import 'package:my_portfolio_app/routes/routes.dart';
import 'package:my_portfolio_app/web/landing_page_web.dart';

void main() {
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
