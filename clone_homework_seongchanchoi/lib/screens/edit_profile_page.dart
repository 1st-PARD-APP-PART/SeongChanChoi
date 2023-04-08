import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class EditProfilePage extends StatelessWidget {
  const EditProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: backgroundColor,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          '프로필 수정',
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: Column(
            children: [
              SizedBox(
                width: 171,
                height: 171,
                child: ExtendedImage.asset(
                  'assets/profile.png',
                  shape: BoxShape.circle,
                ),
              ),
              Container(
                // autogroupal3vrQ3 (Gtg4vBE2FoxiyMWvxGaL3V)
                margin: EdgeInsets.fromLTRB(16, 0, 15, 28),
                width: double.infinity,
                height: 51,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffdddddd)),
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    '본인 이름을 적어주세요!',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: 1.2125,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
              Divider(
                color: onSurface[100],
                thickness: 3,
              ),
              SizedBox(
                height: size.height * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '사는 곳',
                      style: Theme.of(context).textTheme.headline5?.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_forward_ios, size: 15),
                      onPressed: () => Navigator.pushNamed(context, '/signUp'),
                    )
                  ],
                ),
              ),
              Divider(
                color: onSurface[100],
                thickness: 3,
              ),
              Expanded(child: Container()),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  fixedSize: Size(size.width * 1, 91),
                ),
                child: Text(
                  '완료',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
        ),
      ),
    );
  }
}
