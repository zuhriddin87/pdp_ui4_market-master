import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    appBar: AppBar(
    elevation: 0,
    leading: null,
    backgroundColor: Colors.transparent,
    title: Text('Cars',style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.bold),),
    //brightness: Brightness.light,
    actions: [
    IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none,color: Colors.red,)),
    IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart,color: Colors.red,)),
    ],
    ),
    body:  SingleChildScrollView(
    child: Container(
    padding: EdgeInsets.all(20),
    child: Column(
    children: [
    Container(
    height: 40,
    child: ListView(
    scrollDirection: Axis.horizontal,
    children: [
    singleTab(true,"All",),
    singleTab(false,"Red"),
    singleTab(false,"Blue"),
    singleTab(false,"Green"),
    singleTab(false,"Grey"),
    ],
    ),
    ),
    SizedBox(height: 20,),
    makeItem("assets/images/im_car1.jpg"),
    makeItem("assets/images/im_car5.jpg"),
    makeItem("assets/images/im_car3.jpg"),
    makeItem("assets/images/im_car2.jpg"),
    makeItem("assets/images/im_car3.jpg"),
    makeItem("assets/images/im_car4.png"),
    ],
    ),
    ),
    ),
    );
  }
  Widget singleTab(bool type, String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red:Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text,style: TextStyle(fontSize: type? 20: 17,color: type ? Colors.white :Colors.black),),
        ),
      ),
    );
  }
  Widget makeItem(String image){
    return Container(
        height: 250,
        width: double.infinity,
        margin: EdgeInsets.only(bottom: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    image: DecorationImage(
    image: AssetImage(image),
    fit: BoxFit.cover,
    ),
    boxShadow: [
    BoxShadow(
    color: Colors.grey.shade200,
    blurRadius: 10,
    offset: Offset(0,10),
    ),
    ]
    ),
    child: Container(
    padding: EdgeInsets.all(20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: LinearGradient(
    begin: Alignment.bottomRight,
    colors: [
    Colors.black.withOpacity(0.9),
    Colors.black.withOpacity(0.6),
    Colors.black.withOpacity(0.3),
    Colors.black.withOpacity(0.2),
    ]
    ),
    ),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    Expanded(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
    RichText(
    text: TextSpan(
    text: 'PDP car ',
    style: TextStyle(fontSize: 35,color: Colors.white),
    children: [
    TextSpan(text: 'Electric',style: TextStyle(color: Colors.red,fontSize: 20),
    )
    ],
    ),
    ),
    Text("100\$", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),
    SizedBox(height: 100,),
    Container(
    width: 35,
    height: 35,
    decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red
    ),
      child: Center(
        child: Icon(Icons.favorite_border, size: 20, color: Colors.white,),
      ),
    ),
    ],
    ),
    ),
    ],
    ),
    ],
    ),
    ),
    );
  }
}

