import 'package:flutter/material.dart';
import 'package:my_portfolio_app/widgets/darwer_mobile_view.dart';
import 'package:my_portfolio_app/widgets/sansbold.dart';
import 'package:my_portfolio_app/widgets/whatido.dart';

class WorkPageMobile extends StatefulWidget {
  const WorkPageMobile({super.key});

  @override
  State<WorkPageMobile> createState() => _WorkPageMobileState();
}

class _WorkPageMobileState extends State<WorkPageMobile> {
  @override
  Widget build(BuildContext context) {
    var heightDevice = MediaQuery.of(context).size.height;
    return Scaffold(
      // extendBodyBehindAppBar: true,
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
                  'assets/works.jpg',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.cover,
                ),
                centerTitle: true,
                // title: Sansbold(text: 'Contact Me', size: 25),
              ),
              floating: true,
              pinned: true,
              backgroundColor: Colors.white,
              iconTheme: IconThemeData(color: Colors.black, size: 35),
            ),
          ];
        },
        body: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Sansbold(text: 'My Works', size: 45),
                ),
                SizedBox(height: 40),
                AnimatedCard(
                  imagePath: 'assets/app.png',
                  width: 400.0,
                  reverse: false,
                ),
                SizedBox(
                  // width: widthDevice / 3,
                  child: Column(
                    children: const [
                      Sansbold(text: "Portfolio", size: 30.0),
                      SizedBox(height: 15.0),
                      Padding(
                        padding: EdgeInsets.all(14.0),
                        child: Sans(
                          text:
                              "Deployed on Android, IOS and Web, the portfolio project was truly an achievement. I used Flutter to develop the beautiful and responsive UI and Firebase for the back-end.",
                          size: 15.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 70),
                Sansbold(text: 'Yet to be added...', size: 40),
                SizedBox(height: 30),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
