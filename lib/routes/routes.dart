import 'package:flutter/material.dart';
import 'package:my_portfolio_app/mobile/landing_page_mobile.dart';
import 'package:my_portfolio_app/web/landing_page_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1050) {
                return const LandingPageWeb();
              } else {
                return const LandingPageMobile();
              }
            },
          ),
          settings: settings,
        );
      default:
        return MaterialPageRoute(
          builder: (context) => Container(
            color: Colors.black,
            child: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        );
    }
  }
}
