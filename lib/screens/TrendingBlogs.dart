import 'package:flutter/material.dart';
class Trendingblogs extends StatefulWidget{
  @override
  State<Trendingblogs> createState() => _TrendingblogsState();
}
class _TrendingblogsState extends State<Trendingblogs> {
  var titles = ['Title one ','Title two ','Title three ','Title four','Title five','Title six ','Title seven ','Title eight ','Title nine','Title ten','Title eleven ','Title teelve ','Title thirteen ','Title fourteen','Title fifteen'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Trending Blogs",style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold),),
                
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
        return Card(
          elevation: 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(titles[index],style: TextStyle(fontFamily: "serif",fontSize: 21,fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: (){},child: Text("Read  Now",style:  TextStyle(fontFamily: "serif",fontSize: 16),),
                ),
              )
            ],
          ),
        );
      }, separatorBuilder: (context, index){
        return Card();
      }
      ,itemCount:titles.length ,
      )
    );
  }
}