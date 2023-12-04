import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'model/ProductClass.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 10,
            child: Container(
              height: 200,
                padding: const EdgeInsets.only(left: 10, right: 10),
                child:
                Image.asset(
                  product.imageUrl,

                  width: 200.0,
                  fit: BoxFit.fill,
                ))),
        Container(
            padding: const EdgeInsets.only(top: 20),
            child: Text(product.name,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ))),
        Container(
            padding: const EdgeInsets.only(left: 3),
            alignment: Alignment.topLeft,
            child: Text(product.description,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black))),
        Text(
          product.price,
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Text(
          product.status,
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
