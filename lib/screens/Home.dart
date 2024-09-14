import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_online_kachehari/screens/CustomerSupport.dart';
import 'package:flutter_online_kachehari/screens/LiveWakeels.dart';
import 'package:flutter_online_kachehari/screens/Login_Screen.dart';
import 'package:flutter_online_kachehari/screens/TrendingBlogs.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var image = [
    {
      'item': 'assets/images/img1.jpg',
    },
    {
      'item': 'assets/images/img2.jpg',
    },
    {
      'item': 'assets/images/img3.jpg',
    },
    {
      'item': 'assets/images/img4.jpg',
    },
    {
      'item': 'assets/images/img5.jpg',
    },
    {
      'item': 'assets/images/img6.jpg',
    },
  ];

  var list = [
    {
      'title': 'Home',
      'subtitle': 'Account details',
      'icon': Icons.home,
      'trailing': Icons.arrow_forward
    },
    {
      'title': 'Profile',
      'subtitle': 'Profile details',
      'icon': Icons.person,
      'trailing': Icons.arrow_forward
    },
    {
      'title': 'Setting',
      'subtitle': 'settings',
      'icon': Icons.settings,
      'trailing': Icons.arrow_forward
    },
    {
      'title': 'Blog',
      'subtitle': 'Trending blogs',
      'icon': Icons.description,
      'trailing': Icons.arrow_forward
    },
    {
      'title': 'Support',
      'subtitle': 'Help and support',
      'icon': Icons.help,
      'trailing': Icons.arrow_forward
    },
    {
      'title': 'Be advocate',
      'subtitle': 'Register as a advocate',
      'icon': Icons.person_4_rounded,
      'trailing': Icons.arrow_forward
    },
    {
      'title': 'Documentation',
      'subtitle': 'Read Documentation',
      'icon': Icons.edit_document,
      'trailing': Icons.arrow_forward
    },
    {
      'title': 'Policies ',
      'subtitle': 'Company policy',
      'icon': Icons.policy,
      'trailing': Icons.arrow_forward
    },
    {
      'title': 'Terms & Condition',
      'subtitle': 'See terms & conditions',
      'icon': Icons.info,
      'trailing': Icons.arrow_forward
    },
    {
      'title': 'Services',
      'subtitle': 'other services',
      'icon': Icons.design_services,
      'trailing': Icons.exit_to_app
    },
    {
      'title': 'Logout',
      'subtitle': 'Exit ',
      'icon': Icons.logout,
      'trailing': Icons.arrow_forward
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {},
              child: const Icon(
                Icons.notifications_none,
                size: 28,
                color: Colors.white,
              ))
        ],
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: const Icon(
                Icons.menu,
                size: 28,
              ),
              color: Colors.white,
            );
          },
        ),
        title: const Text("Online Kachehari",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "serif",
            )),
        backgroundColor: Colors.lightBlue,
      ),
      drawer: Drawer(
        backgroundColor: Colors.lightBlue,
        child: Column(
          children: <Widget>[
            DrawerHeader(
              margin: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Material(
                    borderRadius: const BorderRadius.all(Radius.circular(50.0)),
                    elevation: 10,
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 90,
                      height: 90,
                      color: Colors.black,
                    ),
                  ),
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Online Kachehari',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontFamily: "serif"),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: ListView.separated(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(list[index]['title'] as String),
                      subtitle: Text(list[index]['subtitle'] as String),
                      leading: Icon(list[index]['icon'] as IconData,color: Colors.lightBlue,),
                      trailing: list[index]['trailing'] != null
                          ? Icon(list[index]['trailing'] as IconData,color: Colors.lightBlue,)
                          : null,
                      onTap: () {
                        if (list[index]['title'] == 'Logout') {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return const Login_Screen();
                          }));
                        } else if (list[index]['title'] == 'Blog') {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Trendingblogs()));
                        } else if (list[index]['title'] == 'Support') {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Customersupport()));
                        } else if (list[index]['title'] == 'Home') {
                          Navigator.of(context).pop();
                        }
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox();
                  },
                  itemCount: list.length,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 4.0, right: 4.0),
        child: Container(
          decoration: const BoxDecoration(
              // image: DecorationImage(
              //   image: AssetImage('assets/images/background.jpg'),
              //   fit: BoxFit.cover,
              // ),
              color: Colors.white
              ),
          child: ListView(
            children: [
              //add search bar here
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 3.0, vertical: 0.0),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(23.0)),
                  elevation: 10,
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      prefixIcon: Icon(
                        Icons.search,
                        size: 32,
                      ),
                      border: InputBorder.none,
                      suffixIcon: Icon(Icons.mic),
                      hintStyle: TextStyle(color: Colors.grey),
                      contentPadding: EdgeInsets.all(10),
                    ),
                  ),
                ),
              ),
              //top advocates
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Set to horizontal scrolling
                child: Row(
                  children: List.generate(image.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(
                          2.0), // Add padding between items
                      child: Column(
                        children: [
                          Card(
                            elevation: 4,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  height: 75, // Adjust height of the container
                                  width: 75, // Adjust width of the container
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(36),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 6,
                                        spreadRadius: 2,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                    color: Colors.grey.withOpacity(0.4),
                                    image: DecorationImage(
                                      image: AssetImage(image[index]['item']!),
                                      fit: BoxFit
                                          .cover, // Cover the entire container
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),
              // for advocate image 
              Container(
                alignment: Alignment.topRight,
                padding: EdgeInsets.only(right: 9),
                height: 25,
                child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Livewakeels();
                      }));
                    },
                    child: const Text('See all',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: "serif",
                            fontWeight: FontWeight.w700))),
              ),
              // advocate image here
              Column(
                children: [
                  //add image here
                  Card(
                    elevation: 7,
                    shape: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                    child: SizedBox(
                      height: 200,
                      width:MediaQuery.of(context).size.width *0.9,
                      child: Container(
                        decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.transparent,
                             // blurRadius: 10,
                              //offset: Offset(0, 5),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),

              // live advocate here
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 9),
                height: 25,
                child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Livewakeels();
                      }));
                    },
                    child: const Text('Live Advocates',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.red,
                            fontFamily: "serif",
                            fontWeight: FontWeight.w700))),
              ),
              
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Set to horizontal scrolling
                child: Row(
                  children: List.generate(image.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.all(
                          2.0), // Add padding between items
                      child: Column(
                        children: [
                          Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                            child: Stack(
                              children: [
                                Container(
                                  height: 75, // Adjust height of the container
                                  width: 75, // Adjust width of the container
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.grey, width: 1),
                                    borderRadius: BorderRadius.circular(36),
                                    boxShadow: const [
                                      BoxShadow(
                                        color: Colors.white,
                                        blurRadius: 6,
                                        spreadRadius: 2,
                                        offset: Offset(0, 0),
                                      ),
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage(image[index]['item']!),
                                      fit: BoxFit
                                          .cover, // Cover the entire container
                                    ),
                                  ),
                                ),
                                const Positioned(
                                  bottom: 10,
                                  left: 15,
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.live_tv_outlined,
                                        color: Colors.red,
                                        size: 14,
                                      ),
                                      SizedBox(width: 3),
                                      Text(
                                        "Live",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
                ),
              ),

              const SizedBox(
                height: 20,
              ),

              //other services here
              Column(
                children: [
                  Container(
                    height: 50,
                    width: 200,
                    margin: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                    padding: const EdgeInsets.fromLTRB(40, 5, 10, 0),
                    decoration: const BoxDecoration(
                      border: Border.symmetric(
                          horizontal:
                              BorderSide(color: Colors.white, width: 2)),
                    ),
                    child: const Text("Other Services",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: "serif",
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 4,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                              // color: Colors.yellow[100], shape: BoxShape.rectangle
                              ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                              //color: Colors.yellow[100], shape: BoxShape.rectangle
                              ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Card(
                        elevation: 4,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                              // color: Colors.yellow[100], shape: BoxShape.rectangle
                              ),
                        ),
                      ),
                      Card(
                        elevation: 4,
                        child: Container(
                          height: 150,
                          width: 150,
                          decoration: const BoxDecoration(
                              // color: Colors.yellow[100], shape: BoxShape.rectangle
                              ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 260,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // bottom navigation bar

      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white.withOpacity(0.2),
        color: Colors.lightBlue,
        animationDuration: const Duration(milliseconds: 300),
        items: const <Widget>[
          Icon(
            Icons.home,
            size: 26,
            color: Colors.white,
          ),
          Icon(
            Icons.message,
            size: 26,
            color: Colors.white,
          ),
          Icon(
            Icons.search,
            size: 26,
            color: Colors.white,
          ),
          Icon(
            Icons.notifications,
            size: 26,
            color: Colors.white,
          ),
          Icon(
            Icons.person,
            size: 26,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}