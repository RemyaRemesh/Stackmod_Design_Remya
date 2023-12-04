import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';

class ProductHistory extends StatefulWidget {
  const ProductHistory({super.key});

  @override
  State<ProductHistory> createState() => _ProductHistoryState();
}

class _ProductHistoryState extends State<ProductHistory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
          SizedBox(width: 10,),
            Icon(
              Icons.menu,
              color: Colors.black,
              size: 20,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              CupertinoIcons.search,
              color: Colors.black,
              size: 20,
            ),
          ],
        ),
        title: const Center(
          child: Text(
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
            ),
            onPressed: () {},
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/ic_product_one.jpg',
                    height: 200,
                    fit: BoxFit.cover,
                  )),
              const SizedBox(
                height: 20,
              ),
              DotsIndicator(
                dotsCount: 4,
                position: 2,
                decorator: const DotsDecorator(
                  color: Colors.grey, // Inactive color
                  activeColor: Colors.black,
                  size: Size.square(5.0),
                  activeSize: Size(5.0, 5.0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('COMMON PROJECTS',style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,

                  fontWeight: FontWeight.w700)),
              const Text('Orginal Achillies Low Sneakers',style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,

                  fontWeight: FontWeight.w500)),
              const Text('\$410', style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,

                  fontWeight: FontWeight.w400)),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                      width: 160,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            elevation: 0,
                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black), // Border color
                              )),
                          child: const Text('COLOR:WHITE',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600)))),
                  SizedBox(
                      width: 160,
                      child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              elevation: 0, // Set elevation to zero

                              backgroundColor: Colors.transparent,
                              foregroundColor: Colors.white,
                              shape: const RoundedRectangleBorder(
                                side: BorderSide(
                                    color: Colors.black), // Border color
                              )),
                          child: const Text('SIZE:41',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w600)))),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                  width: 342,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          shape: const RoundedRectangleBorder(
                            side:
                                BorderSide(color: Colors.black), // Border color
                          )),
                      child: const Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('ADD TO CART',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.white,
                              fontFamily: 'Mulish',
                              fontWeight: FontWeight.w600)),
                          SizedBox(width: 5,),
                          Text('\$410',
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontFamily: 'Mulish',
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                  )
              ),
              const SizedBox(
                height: 30,
              ),
              const Text('DESCRIPTION',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w600)),
              const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                      'Shoes are essential articles of footwear designed to protect and provide comfort to the feet. They come in various styles, materials, and sizes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w500))),
              const SizedBox(
                height: 20,
              ),
              const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('SIZE & FIT',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700)),
              const SizedBox(
                height: 15,
              ),
              const Divider(
                height: 1,
                thickness: 1,
                color: Colors.grey,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('DETAILS & CARE',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontFamily: 'Mulish',
                      fontWeight: FontWeight.w700)),
            ],
          )
        ],
      ),
    );
  }
}
