import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_app/constant.dart';

import '../widgets/home/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: homeAppBar(),
      body: const HomeBody(),
    );
  }

  AppBar homeAppBar() {
    return AppBar(
      elevation: 0,
      title: Text(
        'مرحبا بكم بمتجر الالكترونيات',
        style: GoogleFonts.getFont('Almarai'),
      ),
      //لنقلها الي اليسار بدل منتصف الشاشة
      centerTitle: false,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ],
    );
  }
}
