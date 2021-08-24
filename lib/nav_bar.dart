import 'package:ambonacces/home_page.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class NavBar extends StatelessWidget {
  int currentTab = 0;
  final List<Widget> screens = [
    HomePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.qr_code_scanner,
          color: Colors.amber,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Color.fromRGBO(5, 55, 70, 5),
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home,
                          color: currentTab == 0
                              ? Colors.blueAccent
                              : Colors.blueAccent,
                        ),
                        Text(
                          "Home",
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.blueAccent
                                  : Colors.blueAccent),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_bag,
                          color: currentTab == 1
                              ? Colors.blueAccent
                              : Colors.blueAccent,
                        ),
                        Text(
                          "Mart@access",
                          style: TextStyle(
                              color: currentTab == 0
                                  ? Colors.blueAccent
                                  : Colors.blueAccent),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.shopping_cart,
                          color: currentTab == 2
                              ? Colors.blueAccent
                              : Colors.blueAccent,
                        ),
                        Text(
                          "Keranjang",
                          style: TextStyle(
                              color: currentTab == 2
                                  ? Colors.blueAccent
                                  : Colors.blueAccent),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_sharp,
                          color: currentTab == 3
                              ? Colors.blueAccent
                              : Colors.blueAccent,
                        ),
                        Text(
                          "Akun",
                          style: TextStyle(
                              color: currentTab == 3
                                  ? Colors.blueAccent
                                  : Colors.blueAccent),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
            //Right
          ),
        ),
      ),
    );
  }

  void setState(Null Function() param0) {}
}
