import 'package:flutter/material.dart';
import 'package:store_app/constant.dart';
import 'package:store_app/models/product.dart';
import 'package:store_app/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detaileAppBar(context),
      body: DetailsBody(
        product: product,
      ),
    );
  }

  AppBar detaileAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
      ),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}
