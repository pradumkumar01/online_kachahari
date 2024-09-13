import 'package:flutter/material.dart';
import 'package:flutter_online_kachehari/screens/AllTickets_customerSupport.dart';

class Customersupport extends StatefulWidget {
  @override
  State<Customersupport> createState() => _CustomersupportState();
}

class _CustomersupportState extends State<Customersupport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Support",
          style: TextStyle(
              fontFamily: "serif", fontSize: 21, fontWeight: FontWeight.bold),
        ),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.blue.withOpacity(0.9),
            Colors.lightBlue.withOpacity(0.3),
          ])),
        ),
      ),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          alignment: Alignment.center,
          child: Container(
            padding: const EdgeInsets.all(21.0),
            child: Card(elevation: 5,
              child: Container(
                alignment: Alignment.center,
                height: 500,
                width: 300,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 23, right: 23,top: 11),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Card(
                              elevation: 5,
                              shape: const CircleBorder(
                                  side: BorderSide(color: Colors.grey)),
                              child: Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(35)),
                                   child: Icon(Icons.person,size: 55,color: Colors.grey,),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .push(MaterialPageRoute(builder: (context) {
                                  return AllticketsCustomersupport();
                                }));
                              },
                              child: const Text('View all tickets',
                                  style: TextStyle(
                                    fontFamily: "serif",
                                    fontSize: 16,
                                  )),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 39,
                      ),
                      // next container code is here
                       Column(
                          children: <Widget>[
                            const Padding(
                              padding: const EdgeInsets.only(left: 21, right: 21),
                              child: SizedBox(
                                width: 300,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: 'Title',
                                    hintStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'serif',
                                    ),
                                  ),
                                  style: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'serif'),
                                ),
                              ),
                            ),
                            const Padding(
                              padding:  EdgeInsets.only(left: 21, right: 21),
                              child:  SizedBox(
                                width: 300,
                                child: TextField(
                                  textAlign: TextAlign.center,
                                  decoration: InputDecoration(
                                    hintText: 'Reason',
                                    hintStyle:  TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'serif',
                                    ),
                                  ),
                                  style:  TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'serif'),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 21, right: 21),
                              child: Container(
                                width: 300,
                                height: 100,
                                alignment: Alignment.center,
                                child: const TextField(
                                  textAlign: TextAlign.center,
                                  autocorrect: true,
                                  showCursor: true,
                                  decoration: InputDecoration(
                                    hintText: 'Message',
                                    hintStyle: const TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'serif',
                                    ),
                                  ),
                                  style:  TextStyle(
                                      fontSize: 16,
                                      color: Colors.black,
                                      fontFamily: 'serif'),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 11,),
                     ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.grey, elevation: 1),
                            child: const Text(
                              "Raise issue ",
                              style: TextStyle(
                                  fontFamily: "serif",
                                  fontSize: 21,
                                  color: Colors.white),
                            ),
                          ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
    );
  }
}
