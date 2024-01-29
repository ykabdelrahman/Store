import 'package:flutter/material.dart';
import 'package:store/widgets/custom_text_field.dart';

class UpdateProductScreen extends StatelessWidget {
  const UpdateProductScreen({super.key});
  static String id = 'Update Product';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextFormField(
                hint: 'Product Name',
                decoration: InputDecoration(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
