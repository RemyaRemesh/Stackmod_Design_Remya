import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ProductCardList.dart';
import 'model/ProductClass.dart';

class ProductTile extends StatefulWidget {
  const ProductTile({super.key});
  @override
  State<ProductTile> createState() => _ProductTileState();
}

class _ProductTileState extends State<ProductTile> {
  final List<Product> products = [
    Product(
      name: 'COMMON PROJECTS',
      description: 'Orginal Achillies Low Sneakers',
      price: '\$410',
      imageUrl: 'assets/images/ic_product_one.jpg',
      status: 'Pre-order',
    ),
    Product(
      name: 'COMMON PROJECTS',
      description: 'Orginal Achillies Low Sneakers',
      price: '\$410',
      imageUrl: 'assets/images/ic_product_two.jpg',
      status: 'Pre-order',
    ),
    Product(
      name: 'COMMON PROJECTS',
      description: 'Orginal Achillies Low Sneakers',
      price: '\$390',
      imageUrl: 'assets/images/ic_product_three.jpg',
      status: '',
    ),
    Product(
      name: 'COMMON PROJECTS',
      description: 'Orginal Achillies Low Sneakers',
      price: '\$410',
      imageUrl: 'assets/images/ic_product_four.jpg',
      status: '',
    ),
    Product(
      name: 'COMMON PROJECTS',
      description: 'Orginal Achillies Low Sneakers',
      price: '\$390',
      imageUrl: 'assets/images/ic_product_three.jpg',
      status: '',
    ),
    Product(
      name: 'COMMON PROJECTS',
      description: 'Orginal Achillies Low Sneakers',
      price: '\$410',
      imageUrl: 'assets/images/ic_product_four.jpg',
      status: '',
    ),

  ];
  String selectedOption = 'Sort by Newest';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset : false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 10,),
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 20,
            ),
            SizedBox(width: 4,),
            Icon(
              CupertinoIcons.search,
              color: Colors.black,
              size: 20,
            ),
          ],

        ),
        title: const Center(
    child:
        Text(
          "COMMON PROJECTS",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.w600),
        ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 20,
            ),
            onPressed: () {},
          )
        ],
      ),
      body:
      Column(
        children: [
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            alignment: Alignment.center,
            child: IntrinsicHeight(
              child:
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('Refine products',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w600)),
                const SizedBox(
                  height: 20,
                  child:
                 VerticalDivider(
                  color: Colors.grey,
                  thickness: 1.0,

                )),
                Text(
                  selectedOption,
                  style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
          ),
          const SizedBox(
            height: 12,
          ),
          const Divider(
            height: 1,
            thickness: 1,
            color: Colors.grey,
          ),
          const SizedBox(
            height: 20,
          ),
          Column(children: [
            SizedBox(

                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 60.0,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductCard(product: products[index]);
                  },
                ))
          ])

        ],
      ),
    );
  }
}
