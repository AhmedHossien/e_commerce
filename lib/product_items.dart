import 'package:e_commerce/product.dart';
import 'package:flutter/material.dart';

class Items extends StatelessWidget {
  Items({@required this.title, @required this.product});

  final String title;
  final List<Product> product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(size.height * 0.0125),
          child: GridView.builder(
            itemCount: product.length,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 0.65),
            itemBuilder: (context, index) => product[index],
          ),
        ),
        physics: ScrollPhysics(),
      ),
    );
  }
}
