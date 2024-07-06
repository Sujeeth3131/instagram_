import 'package:flutter/material.dart';
import 'package:instagram_app/home_page.dart';

class Navigation_Screen extends StatefulWidget {
  const Navigation_Screen({super.key});

  @override
  State<Navigation_Screen> createState() => _Navigation_ScreenState();
}

class _Navigation_ScreenState extends State<Navigation_Screen> {
  int currentPage=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Home_Page(),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage=0;

                  });
                },
                icon: Icon(
                  Icons.home,

                  size: 20,
                  color:currentPage ==0
                      ?Color.fromARGB(203,73,101,1)
                      :Color.fromRGBO(40, 40, 40,1),
                )),
            Spacer(),
            IconButton(
                onPressed: () {
                  setState(() {
                    currentPage=1;
                  });
                },
                icon: Icon(
                  Icons.search,
                  size: 20,
                  color:currentPage ==0
                      ?Color.fromARGB(203,73,101,1)
                      :Color.fromRGBO(40, 40, 40,1),
                )),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.ondemand_video,
                  size: 20,
                  color:currentPage ==0
                      ?Color.fromARGB(203,73,101,1)
                      :Color.fromRGBO(40, 40, 40,1),
                )),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.card_travel,
                  size: 20,
                  color:currentPage ==0
                      ?Color.fromARGB(203,73,101,1)
                      :Color.fromRGBO(40, 40, 40,1),
                )),
            Spacer(),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.person,
                  size: 20,
                  color:currentPage ==0
                      ?Color.fromARGB(203,73,101,1)
                      :Color.fromRGBO(40, 40, 40,1),
                )),
          ],
        ),
      ),
    );
  }
}
