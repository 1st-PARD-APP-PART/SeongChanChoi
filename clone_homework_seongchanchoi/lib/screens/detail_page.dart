import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              IconButton(
                icon: Icon(
                  Icons.home_outlined,
                  color: Colors.white,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
            ],
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.ios_share,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            IconButton(
              icon: Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
          ],
        ),
        extendBodyBehindAppBar: true,
        body: Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 405,
              child: ExtendedImage.asset(
                'assets/laptop.png',
                shape: BoxShape.rectangle,
              ),
            ),
          ],
        ));
  }
}
