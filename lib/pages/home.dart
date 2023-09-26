import 'package:flutter/material.dart';
import 'package:selkni2/pages/depannage.dart';
import 'package:selkni2/pages/service.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:selkni2/pages/signup.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<String> wilaya = ['chlef', 'alger'];
  String? selcetedwilaya = 'alger';

  final myitems = [
    Image.asset("assets/cursol1.jpg"),
    Image.asset('assets/cursol2.png'),
    Image.asset('assets/cursol3.jpg'),
  ];

  int thecurrentindes = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 218, 234, 247),
        appBar: AppBar(
          flexibleSpace: Image.asset(
            'assets/appBanner.png',
            alignment: Alignment.centerLeft,
            height: 70,
            width: 40,
          ),
          backgroundColor: Colors.blue.shade500,
          actions: [
            PopupMenuButton(
                icon: Icon(Icons.menu_rounded),
                iconSize: 28,
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(
                              Icons.policy_rounded,
                              color: Colors.black,
                            ),
                            Container(
                              child: Text("Policy"),
                              margin: EdgeInsets.only(left: 18),
                            ),
                          ],
                        ),
                      ),
                      PopupMenuItem(
                          child: Row(
                        children: [
                          Icon(
                            Icons.translate,
                            color: Colors.black,
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 18),
                              child: Text('language'))
                        ],
                      )),
                      PopupMenuItem(
                        child: Row(
                          children: [
                            Icon(
                              Icons.toggle_off_outlined,
                              color: Colors.black,
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 18),
                                child: Text('Mode'))
                          ],
                        ),
                      ),
                    ]),
          ],
        ),
        body: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue.shade400, width: 2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    width: 240,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        isExpanded: true,
                        iconSize: 24,
                        value: selcetedwilaya,
                        items: wilaya
                            .map((item) => DropdownMenuItem(
                                value: item,
                                child:
                                    Text(item, style: TextStyle(fontSize: 20))))
                            .toList(),
                        onChanged: (item) =>
                            setState(() => selcetedwilaya = item),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => depannage())));
                    },
                    icon: Icon(Icons.keyboard_double_arrow_left_rounded),
                    label: Text("depannage"),
                  ),
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => service())));
                      },
                      label: Text("services  "),
                      icon: Icon(Icons.keyboard_double_arrow_right_rounded),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 45,
            ),
            CarouselSlider(
              options: CarouselOptions(
                  clipBehavior: Clip.antiAlias,
                  autoPlay: true,
                  height: 200,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayInterval: const Duration(seconds: 4),
                  enlargeCenterPage: true,
                  aspectRatio: 2.0,
                  onPageChanged: (index, reason) {
                    setState(() {
                      thecurrentindes = index;
                    });
                  }),
              items: myitems,
            ),
            SizedBox(
              height: 15,
            ),
            AnimatedSmoothIndicator(
              activeIndex: thecurrentindes,
              count: myitems.length,
              effect: const WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                dotColor: Colors.grey,
                spacing: 10,
              ),
            ),
            SizedBox(
              height: 85,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => signup())));
              },
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue.shade500, minimumSize: Size(60, 48)),
              child: Text('Sign-up'),
            ),
          ],
        ),
      ),
    );
  }
}
