import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: const Color(0xFF1B1A1D),
        backgroundColor: const Color(0xFF1B1A1D),
        toolbarHeight: 80,
        leadingWidth: 100,
        leading: const Icon(
          Icons.abc,
          size: 80,
        ),
        actions: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF2b2d2e),
            shape: const CircleBorder(),
            elevation: 2,
            child: const Icon(
              Icons.notifications,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: const Color(0xFF2b2d2e),
            shape: const CircleBorder(),
            elevation: 2,
            child: const Icon(
              Icons.chat,
              color: Colors.grey,
            ),
          ),
          const SizedBox(width: 10)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (int i = 0; i < 10; i++)
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Container(
                  height: 560, //MediaQuery.of(context).size.height * 0.6,
                  decoration: BoxDecoration(
                    color: const Color(0xFF2b2d2e),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                          height: 60,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                                child: Icon(
                                  Icons.person,
                                  size: 40,
                                ),
                              ),
                              Text(
                                "Name",
                                textScaleFactor: 1.5,
                              ),
                              Padding(
                                padding: EdgeInsets.all(18.0),
                                child: Icon(
                                  Icons.menu_rounded,
                                ),
                              )
                            ],
                          )),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 420,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(25)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.asset(
                              "assets/abc.jpg",
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      const Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, top: 10),
                            child: Icon(Icons.thumb_up_outlined),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "explore"),
        ],
        selectedItemColor: const Color(0xFFFFFFFF),
        unselectedItemColor: const Color(0xFF2b2d2e),
      ),
    );
  }
}
