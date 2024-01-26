import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.itemIndex,
    required this.product,
    required this.press,
  });

  final int itemIndex;
  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    //للحصول علي عرض وطول التطبيق
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: kDefaultPadding / 2,
        horizontal: kDefaultPadding,
      ),
      height: 190.0,
      child: InkWell(
        onTap: () => press(),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 15),
                      blurRadius: 25,
                      color: Colors.black12)
                ],
              ),
            ),
            Positioned(
              //لنقل الصورة الي اليسرا العلوية
              top: 0.0,
              left: 0.0,
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                height: 160,
                width: 200,
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0.0,
              right: 0.0,
              child: SizedBox(
                height: 136,
                //الصورة حجمها 200 لذلك هيكون حجم هذا البوكس عرض الشاشة كلها - 200
                width: size.width - 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //مسافات فاضية قبل العنوان الرئيسي
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.title,
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding),
                      child: Text(
                        product.subTitle,
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(kDefaultPadding),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding * 1.5, //30px padding),
                          vertical: kDefaultPadding / 5, //5px
                        ),
                        decoration: BoxDecoration(
                          color: kSecondaryColor,
                          borderRadius: BorderRadius.circular(22),
                        ),
                        child: Text('السعر:\$${product.price}'),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
