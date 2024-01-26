import 'package:flutter/material.dart';

import '../../constant.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    super.key,
    required this.size,
    required this.image,
  });

  final Size size;
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      //ارتفاع بقيمة 80% من عرض هذا الموبايل
      height: size.width * 0.8,

      child: Stack(
        //لنقل كل العناصر لاسفل البوكس
        alignment: Alignment.bottomCenter,
        children: [
          //اللون خلف الصورة
          Container(
            height: size.width * 0.7,
            width: size.width * 0.7,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          Image.asset(
            image,
            height: size.width * 0.75,
            width: size.width * 0.75,
            //لكي لا نواجه اي مشكلة في احجام الصور
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
