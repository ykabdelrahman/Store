import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:store/models/product.dart';
import 'package:store/services/all_product.dart';

import '../widgets/custom_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = 'HomeScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'New Trend',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(
              padding: const EdgeInsets.only(right: 8),
              onPressed: () {},
              icon: const Icon(
                FontAwesomeIcons.cartShopping,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: FutureBuilder<List<Product>>(
          future: AllProduct().get(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<Product> products = snapshot.data!;
              return GridView.builder(
                itemCount: products.length,
                padding: const EdgeInsets.only(
                  top: 150,
                  bottom: 40,
                  left: 8,
                  right: 8,
                ),
                clipBehavior: Clip.none,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 100,
                ),
                itemBuilder: (context, index) {
                  return CustomCard(
                    products: products[index],
                  );
                },
              );
            } else {
              return const Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
