import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:my_portfolio_app/widgets/tabs_web.dart';
import 'package:my_portfolio_app/widgets/whatido.dart';
import 'package:url_launcher/url_launcher.dart';

class WorksPageWeb extends StatefulWidget {
  const WorksPageWeb({super.key});

  @override
  State<WorksPageWeb> createState() => _WorksPageWebState();
}

class _WorksPageWebState extends State<WorksPageWeb> {
  @override
  Widget build(BuildContext context) {
    var widthDevice = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.black,
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 72,
              backgroundColor: Colors.tealAccent,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('picture.jpeg'),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Sansbold(text: 'Jashwanth Gowda R', size: 25),
            ),
            SizedBox(height: 20),
            // social media icons svg files for insta github twitter
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // svg images
                GestureDetector(
                  child: SvgPicture.asset('assets/github.svg', height: 30),
                  onTap: () async {
                    await launchUrl(
                      Uri.parse('https://github.com/Jashwanth-Gowda-R'),
                    );
                  },
                ),
                SizedBox(width: 20),
                SvgPicture.asset('assets/instagram.svg', height: 30),
                SizedBox(width: 20),
                SvgPicture.asset('assets/twitter.svg', height: 30),
              ],
            ),
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              // automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black, size: 25),
              expandedHeight: 600.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  'assets/works.jpg',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                // title: Sansbold(text: 'Contact Me', size: 25),
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 3),
                  TabsWeb(title: 'Home', route: '/', color: Colors.white),
                  Spacer(),
                  TabsWeb(title: 'Works', route: '/works', color: Colors.white),
                  Spacer(),
                  TabsWeb(title: 'Blogs', route: '/blog', color: Colors.white),
                  Spacer(),
                  TabsWeb(title: 'About', route: '/about', color: Colors.white),
                  Spacer(),
                  TabsWeb(
                    title: 'Contact',
                    route: '/contact',
                    color: Colors.white,
                  ),
                  Spacer(),
                ],
              ),
            ),
          ];
        },
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: ListView(
            children: [
              Column(
                children: [
                  SizedBox(height: 20),
                  Sansbold(text: 'Works', size: 40),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      AnimatedCard(
                        imagePath: 'assets/app.png',
                        width: 400.0,
                        reverse: false,
                      ),
                      SizedBox(
                        width: widthDevice / 3,
                        child: Column(
                          children: const [
                            Sansbold(text: "Portfolio", size: 30.0),
                            SizedBox(height: 15.0),
                            Sans(
                              text:
                                  "Deployed on Android, IOS and Web, the portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the back-end.",
                              size: 15.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 70),
                  Sansbold(text: 'Yet to be added...', size: 40),
                  SizedBox(height: 30),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
