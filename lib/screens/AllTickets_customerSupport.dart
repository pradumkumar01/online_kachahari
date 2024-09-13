import 'package:flutter/material.dart';
class AllticketsCustomersupport extends StatefulWidget{
  @override
  State<AllticketsCustomersupport> createState() => _AllticketsCustomersupportState();
}
class _AllticketsCustomersupportState extends State<AllticketsCustomersupport> {
  var titles = ['Ticket one ','Ticket two','Ticket three ','Ticket four','Ticket five ','Ticket six','Ticket seven ','Ticket eight'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title:const Text("All tickets",style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold),),
                
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
                Colors.blue.withOpacity(0.9),
                 Colors.lightBlue.withOpacity(0.3),
            ])
          ),
        ),
      ),
      body:ListView.separated(itemBuilder: (context, index){
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(titles[index],style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold),),
                ),
               
              ],
            )
          ],
        );
      }, separatorBuilder: (context, index){
        return const Divider();
      }
      ,itemCount:titles.length ,
      )
    );
  }
}