import 'package:flutter/material.dart';
import 'package:my_portfolio_app/contact_responsive_page.dart';
import 'package:my_portfolio_app/landing_responsive_screen.dart';
import 'package:my_portfolio_app/mobile/about_me_mobile.dart';
import 'package:my_portfolio_app/mobile/contact_me_mobile.dart';
import 'package:my_portfolio_app/mobile/work_page_mobile.dart';
import 'package:my_portfolio_app/web/about_me_web.dart';
import 'package:my_portfolio_app/web/contact_me_web.dart';
import 'package:my_portfolio_app/web/works_page_web.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      // case '/':
      //   return MaterialPageRoute(
      //     builder: (context) => LayoutBuilder(
      //       builder: (context, constraints) {
      //         if (constraints.maxWidth > 1050) {
      //           return const LandingPageWeb();
      //         } else {
      //           return const LandingPageMobile();
      //         }
      //       },
      //     ),
      //     settings: settings,
      //   );
      case '/':
        return MaterialPageRoute(
          builder: (context) => LandingPageResponsive(),
          settings: settings,
        );
      case '/works':
        return MaterialPageRoute(
          builder: (context) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1050) {
                return const WorksPageWeb();
              } else {
                return const WorkPageMobile();
              }
            },
          ),
          settings: settings,
        );
      // /about
      case '/about':
        return MaterialPageRoute(
          builder: (context) => LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1050) {
                return const AboutMeWeb();
              } else {
                return const AboutMeMobile();
              }
            },
          ),
          settings: settings,
        );
      // /contact
      // case '/contact':
      //   return MaterialPageRoute(
      //     builder: (context) => LayoutBuilder(
      //       builder: (context, constraints) {
      //         if (constraints.maxWidth > 1050) {
      //           return const ContactMeWeb();
      //         } else {
      //           return const ContactMeMobile();
      //         }
      //       },
      //     ),
      //     settings: settings,
      //   );
      case '/contact':
        return MaterialPageRoute(
          builder: (context) =>
              const ContactPageResponsive(), // Use responsive widget
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
