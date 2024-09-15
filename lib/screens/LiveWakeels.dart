import 'package:flutter/material.dart';
import 'package:flutter_online_kachehari/screens/ChatScreen.dart';

class Livewakeels extends StatefulWidget {
  @override
  State<Livewakeels> createState() => _LivewakeelsState();
}

class _LivewakeelsState extends State<Livewakeels> {
  final List<Map<String, dynamic>> _items = [
    {
      'realName': 'John Doe',
      'subtitle': 'Live now',
      'chatStatus': 'Chat Now',
      'icon': Icons.person,
      'isOnline': true,
    },
    {
      'realName': 'Jane Smith',
      'subtitle': 'Offline',
      'chatStatus': 'Chat later',
      'icon': Icons.person,
      'isOnline': false,
    },
    {
      'realName': 'Michael Brown',
      'subtitle': 'Live now',
      'chatStatus': 'Chat Now',
      'icon': Icons.person,
      'isOnline': true,
    },
    {
      'realName': 'Emily Davis',
      'subtitle': 'Offline',
      'chatStatus': 'Chat later',
      'icon': Icons.person,
      'isOnline': false,
    },
    {
      'realName': 'Chris Johnson',
      'subtitle': 'Live now',
      'chatStatus': 'Chat Now',
      'icon': Icons.person,
      'isOnline': true,
    },
    // Add more items as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
<<<<<<< HEAD
        appBar: AppBar(
          title: const Text(
            "Live Advocates",
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
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Card(
                      elevation: 5,
                      shape: const CircleBorder(
                          side: BorderSide(color: Colors.grey)),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Icon(
                            Icons.person,
                            size: 55,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        titles[index],
                        style: const TextStyle(
                            fontFamily: "serif",color: Colors.black,
                            fontSize: 16,),
                      ),
                    ),
                  ],
                ),
                 Padding(
                  padding:  EdgeInsets.all(11.0),
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(border: Border.all(color: Colors.grey),color: Colors.green,),
                    height: 32,
                    child: InkWell(onTap: (){},
                      child: Text(
                        " Chat Now",
                        style: TextStyle(fontFamily: "serif", fontSize: 16),
                      ),
                    ),
=======
      appBar: AppBar(
        title: const Text(
          "Live Advocates",
          style: TextStyle(
            fontFamily: "serif",
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          final item = _items[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.all(16.0),
              leading: CircleAvatar(
                backgroundColor: Colors.blueAccent,
                child: Icon(item['icon'], color: Colors.white),
              ),
              title: Text(
                item['realName'],
                style: TextStyle(
                  fontFamily: "serif",
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(
                item['subtitle'],
                style: TextStyle(
                  color: item['isOnline'] ? Colors.green : Colors.red,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                item['chatStatus'],
                style: TextStyle(
                  fontFamily: "serif",
                  fontSize: 16,
                  color: item['isOnline'] ? Colors.blue : Colors.grey,
                ),
              ),
              onTap: () {
                if (!item['isOnline']) {
                  return;
                }
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ChatScreen(),
>>>>>>> master
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
