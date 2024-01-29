import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/constants.dart';
import 'package:store/models/product.dart';
import 'package:store/screens/update_product_screen.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({super.key, required this.products});
  final Product products;

  @override
  State<CustomCard> createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  Color heartColor = kPrimaryColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(.4),
                blurRadius: 22,
                spreadRadius: 0,
                offset: const Offset(3, 3),
              ),
            ],
          ),
          child: Card(
              color: Colors.white,
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.only(right: 12, left: 12, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          widget.products.title.substring(0, 10),
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            if (heartColor == Colors.red) {
                              heartColor = kPrimaryColor;
                            } else {
                              heartColor = Colors.red;
                            }
                            setState(() {});
                          },
                          child: Icon(
                            FontAwesomeIcons.solidHeart,
                            color: heartColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 3),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          r'$' '${widget.products.price}',
                          style: const TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              UpdateProductScreen.id,
                            );
                          },
                          child: Icon(
                            FontAwesomeIcons.penToSquare,
                            color: kPrimaryColor,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )),
        ),
        Positioned(
          right: 28,
          bottom: 78,
          child: Image.network(
            widget.products.image,
            height: 96,
            width: 72,
          ),
        ),
      ],
    );
  }
}
