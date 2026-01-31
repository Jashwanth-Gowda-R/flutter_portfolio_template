import 'package:flutter/material.dart';
import 'package:my_portfolio_app/widgets/blog_post.dart';
import 'package:my_portfolio_app/widgets/darwer_mobile_view.dart';

class BlogMobile extends StatefulWidget {
  const BlogMobile({super.key});

  @override
  State<BlogMobile> createState() => _BlogMobileState();
}

class _BlogMobileState extends State<BlogMobile> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.white,
        // appBar: AppBar(
        //   backgroundColor: Colors.transparent,
        //   elevation: 0,
        //   iconTheme: IconThemeData(color: Colors.black, size: 35),
        // ),
        endDrawer: DrawerMobileView(),
        body: NestedScrollView(
          headerSliverBuilder: (context, bool innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                expandedHeight: heightDevice * 0.35,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(
                    'assets/blog.jpg',
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                  centerTitle: true,
                  title: Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      'Welcome to my blog',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                floating: true,
                pinned: true,
                backgroundColor: Colors.white,
                iconTheme: IconThemeData(color: Colors.black, size: 35),
              ),
            ];
          },
          body: SingleChildScrollView(
            child: Column(
              children: [
                // Blog Posts
                BlogPost(
                  title: 'Getting Started with Flutter Development',
                  body: '''
Flutter has revolutionized mobile app development with its single codebase approach for both iOS and Android. In this comprehensive guide, we'll explore the fundamentals of Flutter, including widgets, state management, and the hot reload feature that makes development incredibly fast.

The key advantage of Flutter is its widget-based architecture. Everything in Flutter is a widget, from structural elements like buttons and text to layout components like rows and columns. This consistency makes the learning curve much smoother for developers.

One of the most powerful features is Flutter's hot reload, which allows you to see changes in real-time without restarting the app. This dramatically speeds up the development process and makes experimenting with UI designs a breeze.

For state management, Flutter offers several options including Provider, Riverpod, Bloc, and GetX. Each has its own strengths, and choosing the right one depends on your project's complexity and team preferences.

Whether you're building a simple app or a complex enterprise solution, Flutter provides the tools and performance you need to create beautiful, native-quality applications.
        ''',
                  isWeb: false,
                  date: 'Mar 15, 2024',
                  category: 'Flutter',
                ),

                BlogPost(
                  title: 'Mastering Firebase for Backend Services',
                  body: '''
Firebase provides a comprehensive suite of backend services that can supercharge your Flutter applications. From real-time databases to authentication and cloud functions, Firebase eliminates the need for server management while providing enterprise-grade features.

Firestore, Firebase's NoSQL database, offers real-time synchronization across all connected clients. This means changes made by one user are instantly visible to others, perfect for chat applications, collaborative tools, and real-time dashboards.

Authentication in Firebase supports multiple providers including email/password, Google, Facebook, Twitter, and GitHub. The SDK makes implementing secure authentication straightforward, with built-in security rules to protect user data.

Cloud Functions allow you to run backend code in response to events triggered by Firebase features and HTTPS requests. This serverless architecture automatically scales with your user base, so you only pay for what you use.

Firebase also includes powerful analytics, crash reporting, and performance monitoring tools. These insights help you understand user behavior and optimize your app's performance over time.
        ''',
                  isWeb: false,
                  date: 'Feb 28, 2024',
                  category: 'Firebase',
                ),

                BlogPost(
                  title: 'Building Responsive Web Apps with Flutter',
                  body: '''
Flutter for web has matured significantly, allowing developers to create responsive web applications that work seamlessly across desktop, tablet, and mobile devices. The same codebase can now target mobile, web, and desktop platforms.

Responsive design in Flutter is achieved through MediaQuery, LayoutBuilder, and Flexible widgets. These tools help you adapt your UI to different screen sizes and orientations. For complex layouts, you might want to use packages like responsive_framework or flutter_screenutil.

Performance optimization is crucial for web applications. Flutter web apps are compiled to JavaScript and use CanvasKit for rendering, providing near-native performance. Code splitting and lazy loading can further improve initial load times.

SEO considerations are important for web apps. While Flutter web apps are single-page applications (SPAs), you can implement server-side rendering (SSR) or use prerendering techniques to make your content more discoverable by search engines.

Integration with web APIs and third-party JavaScript libraries is straightforward using platform channels or the js package. This allows you to leverage the full power of the web platform while maintaining a consistent codebase.
        ''',
                  isWeb: false,
                  date: 'Jan 20, 2024',
                  category: 'Web Development',
                ),

                BlogPost(
                  title: 'State Management Patterns in Flutter',
                  body: '''
Choosing the right state management solution is critical for Flutter app architecture. There are several patterns available, each with its own trade-offs and best use cases.

Provider is the recommended starting point for most applications. It's simple, built by the Flutter team, and works well for medium-sized apps. Provider uses InheritedWidget under the hood to efficiently propagate state changes through the widget tree.

Riverpod, created by the same developer as Provider, addresses some of Provider's limitations. It's compile-safe (no runtime exceptions for missing providers), testable, and doesn't depend on the widget tree.

For complex applications with multiple data streams and business logic, BLoC (Business Logic Component) is a popular choice. BLoC separates business logic from UI, making code more testable and maintainable. The flutter_bloc package provides a robust implementation.

GetX is another popular option that combines state management, dependency injection, and routing in a single package. It's known for its simplicity and performance, though it follows a different philosophy than Provider or BLoC.

Ultimately, the best state management solution depends on your team's experience, project requirements, and personal preference. Many successful Flutter apps have been built with each of these approaches.
        ''',
                  isWeb: false,
                  date: 'Dec 10, 2023',
                  category: 'Architecture',
                ),

                BlogPost(
                  title: 'UI/UX Best Practices for Mobile Apps',
                  body: '''
Creating exceptional user experiences requires attention to both UI (User Interface) and UX (User Experience). While UI focuses on visual design, UX encompasses the entire user journey from discovery to ongoing usage.

Consistency is key in mobile app design. Maintain consistent spacing, typography, colors, and interaction patterns throughout your app. Flutter's ThemeData makes it easy to define and apply consistent styling across your entire application.

Navigation should be intuitive and predictable. Follow platform conventions (Material Design for Android, Cupertino for iOS) while adding your brand's personality. Consider using bottom navigation for primary destinations and drawers for secondary options.

Performance impacts UX significantly. Optimize image loading with caching, implement lazy loading for lists, and minimize widget rebuilds. Users expect apps to respond instantly to their interactions.

Accessibility is often overlooked but crucial for inclusive design. Ensure sufficient color contrast, support larger text sizes, and provide semantic labels for screen readers. Flutter has excellent built-in accessibility support.

User feedback is essential for continuous improvement. Implement analytics to track user behavior, gather feedback through in-app surveys, and conduct usability testing to identify pain points in your design.
        ''',
                  isWeb: false,
                  date: 'Nov 5, 2023',
                  category: 'Design',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
