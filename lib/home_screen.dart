import 'package:e_commerce/bottom_nav.dart';
import 'package:e_commerce/categories.dart';
import 'package:e_commerce/product.dart';
import 'package:e_commerce/product_items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Product> pro = [
  Product(
    id: 123,
    name: 'ABCjhkjhgkghjhkjgjkgkgkjkjggjgkjkj',
    title: 'abc',
    image: 'images/laptop.jpg',
    price: 320,
    function: () {},
  ),
  Product(
    id: 456,
    name: 'DEFG',
    title: 'defg',
    image: 'images/bake.jpg',
    price: 230,
    function: () {},
  ),
  Product(
    id: 789,
    name: 'HIJ',
    title: 'hij',
    image: 'images/ice.jpg',
    price: 130,
    function: () {},
  ),
  Product(
    id: 789,
    name: 'KLM',
    title: 'klm',
    image: 'images/strawberry.jpg',
    price: 330,
    function: () {},
  ),
];
List<Product> proMen = [
  Product(
    id: 123,
    name: 'ABCjhkjhgkghjhkjgjkgkgkjkjggjgkjkj',
    title: 'abc',
    image: 'images/laptop.jpg',
    price: 320,
    function: () {},
  ),
  Product(
    id: 789,
    name: 'HIJ',
    title: 'hij',
    image: 'images/ice.jpg',
    price: 130,
    function: () {},
  ),
  Product(
    id: 789,
    name: 'KLM',
    title: 'klm',
    image: 'images/strawberry.jpg',
    price: 330,
    function: () {},
  ),
  Product(
    id: 456,
    name: 'DEFG',
    title: 'defg',
    image: 'images/bake.jpg',
    price: 230,
    function: () {},
  ),
];
List<Product> proWomen = [
  Product(
    id: 456,
    name: 'DEFG',
    title: 'defg',
    image: 'images/bake.jpg',
    price: 230,
    function: () {},
  ),
  Product(
    id: 789,
    name: 'HIJ',
    title: 'hij',
    image: 'images/ice.jpg',
    price: 130,
    function: () {},
  ),
  Product(
    id: 123,
    name: 'ABCjhkjhgkghjhkjgjkgkgkjkjggjgkjkj',
    title: 'abc',
    image: 'images/laptop.jpg',
    price: 320,
    function: () {},
  ),
  Product(
    id: 789,
    name: 'KLM',
    title: 'klm',
    image: 'images/strawberry.jpg',
    price: 330,
    function: () {},
  ),
];
List<Product> proDevices = [
  Product(
    id: 789,
    name: 'HIJ',
    title: 'hij',
    image: 'images/ice.jpg',
    price: 130,
    function: () {},
  ),
  Product(
    id: 123,
    name: 'ABCjhkjhgkghjhkjgjkgkgkjkjggjgkjkj',
    title: 'abc',
    image: 'images/laptop.jpg',
    price: 320,
    function: () {},
  ),
  Product(
    id: 456,
    name: 'DEFG',
    title: 'defg',
    image: 'images/bake.jpg',
    price: 230,
    function: () {},
  ),
  Product(
    id: 789,
    name: 'KLM',
    title: 'klm',
    image: 'images/strawberry.jpg',
    price: 330,
    function: () {},
  ),
];
List<Product> proGadgets = [
  Product(
    id: 456,
    name: 'DEFG',
    title: 'defg',
    image: 'images/bake.jpg',
    price: 230,
    function: () {},
  ),
  Product(
    id: 789,
    name: 'HIJ',
    title: 'hij',
    image: 'images/ice.jpg',
    price: 130,
    function: () {},
  ),
  Product(
    id: 789,
    name: 'KLM',
    title: 'klm',
    image: 'images/strawberry.jpg',
    price: 330,
    function: () {},
  ),
  Product(
    id: 123,
    name: 'ABCjhkjhgkghjhkjgjkgkgkjkjggjgkjkj',
    title: 'abc',
    image: 'images/laptop.jpg',
    price: 320,
    function: () {},
  ),
];

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height * 0.070,
            ),
            Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(size.height * 0.025)),
              child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search_rounded),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  )),
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.025),
            ),
            SizedBox(
              height: size.height * 0.035,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.025),
              child: Row(
                children: <Widget>[
                  Text(
                    'Categories',
                    style: TextStyle(
                      fontSize: size.height * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.035,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.025),
              height: size.width * 0.25,
              //height: size.height * 0.1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Gat(
                      size: size,
                      cat: 'Men',
                      iconData: FontAwesomeIcons.male,
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Items(
                            title: 'Men',
                            product: proMen,
                          );
                        }));
                      }),
                  Gat(
                      size: size,
                      cat: 'Women',
                      iconData: FontAwesomeIcons.female,
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Items(
                            title: 'Women',
                            product: proWomen,
                          );
                        }));
                      }),
                  Gat(
                      size: size,
                      cat: 'Devices',
                      iconData: Icons.devices_other_rounded,
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Items(
                            title: 'Devices',
                            product: proDevices,
                          );
                        }));
                      }),
                  Gat(
                      size: size,
                      cat: 'Gadgets',
                      iconData: Icons.watch_outlined,
                      function: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Items(
                            title: 'Gadgets',
                            product: proGadgets,
                          );
                        }));
                      })
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.035,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.025),
              child: Row(
                children: <Widget>[
                  Text(
                    'Best selling',
                    style: TextStyle(
                      fontSize: size.height * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'See all',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: size.height * 0.025,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: size.height * 0.0225,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: size.height * 0.0125),
                child: Row(
                  children: pro,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Bottom(size: size),
    );
  }
}
