import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      appBar: AppBar(
        // leading: Icon(
        //   Icons.menu,
        //   color: Theme.of(context).primaryColor,
        // ),
        title: Text(
          "Netbot Delivery",
          style: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 25,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.work_rounded,
                    color: Colors.white,
                    size: 25,
                  )
                : const Icon(
                    Icons.work_outline_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.widgets_rounded,
                    color: Colors.white,
                    size: 25,
                  )
                : const Icon(
                    Icons.widgets_outlined,
                    color: Colors.white,
                    size: 25,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 25,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 25,
                  ),
          ),
        ],
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 2.0),
      child: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(3.0),
        children: <Widget>[
          makeDashboardItem("Scheduled Trips", Icons.fire_truck_sharp),
          makeDashboardItem("In Transit", Icons.rocket),
          makeDashboardItem("Alphabet", Icons.alarm),
          makeDashboardItem("Alphabet", Icons.alarm),
          makeDashboardItem("Alphabet", Icons.alarm),
          makeDashboardItem("Alphabet", Icons.alarm)
        ],
      ),
    );
  }

  Card makeDashboardItem(String title, IconData icon) {
    return Card(
        elevation: 1.0,
        margin: EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(color: Color.fromRGBO(220, 220, 220, 1.0)),
          child: InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              verticalDirection: VerticalDirection.down,
              children: <Widget>[
                SizedBox(height: 50.0),
                Center(
                    child: Icon(
                  icon,
                  size: 40.0,
                  color: Colors.black,
                )),
                SizedBox(height: 20.0),
                Center(
                  child: Text(title,
                      style: TextStyle(fontSize: 18.0, color: Colors.black)),
                )
              ],
            ),
          ),
        ));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: const Color(0xffC4DFCB),
      // child: Center(
      //   child: Text(
      //     "Dashboard",
      //     style: TextStyle(
      //       color: Color.fromARGB(255, 24, 129, 185),
      //       fontSize: 20,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      // ),

      // color: const Color(0xffC4DFCB),
      // child: Center(
      //   child: Text(
      //     "Delivery Trips page",
      //     style: TextStyle(
      //       color: Color.fromARGB(255, 31, 27, 94),
      //       fontSize: 20,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      // ),

      height: MediaQuery.of(context).size.height * 1,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.only(right: 1),
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 20,
          itemBuilder: (context, index) {
            return Card(
              // child: Align(
              //   alignment: Alignment.centerLeft,
              //   child: ListTile(
              //     leading: Container(
              //       height: 90,
              //       width: 90,
              //     ),
              //     title: Align(
              //         alignment: Alignment.topRight,
              //         child: Column(
              //           mainAxisAlignment: MainAxisAlignment.end,
              //           crossAxisAlignment: CrossAxisAlignment.end,
              //         )),
              //   ),
              // ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    leading: Icon(Icons.fire_truck, size: 30),
                    title: Text('[Delivery Trip]:NT001'),
                    trailing: Text('Pending'),
                    subtitle: Text('Scheduled Time : 14,11,2022, 9.00AM'),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Color.fromARGB(255, 44, 27, 94),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red, Colors.deepOrange.shade300],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          stops: [0.5, 0.9],
        ),
      ),

      // color: const Color(0xffC4DFCB),
      // child: Center(
      //   child: Text(
      //     "Page Number ",
      //     style: TextStyle(
      //       color: Color.fromARGB(255, 14, 84, 155),
      //       fontSize: 20,
      //       fontWeight: FontWeight.w500,
      //     ),
      //   ),
      // ),
    );
  }
}
