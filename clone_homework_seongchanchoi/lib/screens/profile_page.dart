import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        title: Text(
          '나의 당근',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24),
            child: TextButton(
              onPressed: () {},
              child: Text(
                '로그아웃',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          )
        ],
      ),
      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: Column(
            children: [
              SizedBox(
                height: size.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: ExtendedImage.asset(
                        'assets/profile.png',
                        shape: BoxShape.circle,
                      ),
                    ),
                    Text(
                      '본인 이름',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    IconButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, '/editProfile'),
                      icon: Icon(Icons.arrow_forward_ios),
                    )
                  ],
                ),
              ),
              Divider(
                color: onSurface[100],
                thickness: 3,
              ),
              SizedBox(
                height: size.height * 0.15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildIconList('판매내역', Icons.menu),
                    _buildIconList('구매내역', Icons.savings),
                    _buildIconList('관심목록', Icons.favorite),
                  ],
                ),
              ),
              Divider(
                color: onSurface[100],
                thickness: 3,
              ),
              SizedBox(
                height: size.height * 0.05,
                child: Center(
                  child: Text('최근판매내역',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                      )),
                ),
              ),
              Divider(
                color: onSurface[100],
                thickness: 3,
              ),
              SizedBox(
                height: 12,
              ),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 336,
                    height: 336,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage('assets/phone.png'),
                        colorFilter: ColorFilter.mode(
                            Colors.white.withOpacity(0.5), BlendMode.dstATop),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text('갤럭시 S22',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIconList(String title, IconData icons) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: secondaryColor,
          minRadius: 32,
          child: Icon(
            icons,
            color: primary,
          ),
        ),
        SizedBox(height: 12),
        Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
