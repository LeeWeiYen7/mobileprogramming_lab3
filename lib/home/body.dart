import 'package:flutter/material.dart';
import 'package:com_262212_lab3/constants.dart';

class Body extends StatelessWidget {
  const Body({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children:<Widget>[
              ItemCard(
                images: "assets\images\food1.jpg",
                name: "Kung Pao Chicken Rice",
                description: "Consisting of tender, marinated chicken pieces, lip-tingling spices and crisp roasted peanuts, all in a wonderful fragrant sauce.",
                press: () {},
              ),
               ItemCard(
                images: "assets\images\food2.jpg",
                name: "Onion Fried Egg",
                description: "Fried Egg with Fried Onion",
                press: () {},
              ),
               ItemCard(
                images: "assets\images\food3.jpg",
                name: "Japanese Tofu",
                description:"Also known as egg tofu, fried together with minced meat with soy sause",
                press: () {},
              ),
               ItemCard(
                images: "assets\images\food4.jpg",
                name: "Fried Sweet Potato Leaves",
                description:"Cooked sweet potato leaves with soy sause and other ingredients",                
                press: () {},
              ),
              ItemCard(
                images: "assets\images\food5.jpg",
                name: "Salted Egg Yolk Shrimp Ball",
                description:"Prawn flesh will be coated generously with a divine salted egg sauce and it's also easier for the kid to eat",                
                press: () {},
              ),
              ItemCard(
                images: "assets\images\food6.jpg",
                name: "Sweet and sour pork ribs",
                description:"Put pork ribs into the work and stir with cooking wine, soy sauce, white vinegar and sugar.",
                press: () {},
              ),
            ]
          )
        ],
    ));
  }
}

class ItemCard extends StatelessWidget {
  final String name, images, description;
  final Function press;
  ItemCard({
    Key ?key,
    required this.name,
    required this.images,
    required this.description,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, top:20,bottom:20),
      padding:EdgeInsets.all(20),
      decoration:  BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            offset: Offset(0,4),
            blurRadius: 20,
            color: Colors.blueAccent,
          )
        ] 
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap:(){},
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child:Column(  
               children:<Widget>[
                  Container(
                    padding: EdgeInsets.all(25),
                    decoration: BoxDecoration(
                      color: kPrimaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Image.asset(images),
                    width: size.width * 0.18,
                  ),
                  Text(name),
                  //Text("Kung Pao Chicken Rice"),
                  SizedBox(height: 12),
                  Text(description),
                  //Text("Consisting of tender, marinated chicken pieces, lip-tingling spices and crisp roasted peanuts, all in a wonderful fragrant sauce."),
                  
        ]
      )
          )
        )
      )
    );
  }
}