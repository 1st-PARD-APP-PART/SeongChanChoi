import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:clone_homework_seongchanchoi/utils/text_style.dart';
import '../utils/themes.dart';

class WelcomePage extends StatelessWidget {
  final logoImage = 'assets/logo.png';

  WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      // backgroundColor: Themes.light.backgroundColor,
      body: _buildBody(context, size),
    );
  }

  Widget _buildBody(BuildContext context, Size size) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          _buildLogo(),
          SizedBox(height: size.height * 0.25),
          _buildButton(context),
          SizedBox(height: size.height * 0.03),
        ],
      ),
    );
  }

  Widget _buildLogo() {
    return Column(
      children: [
        Image(
          image: AssetImage(logoImage),
          width: 193,
          height: 193,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          '당신 근처의 당근마켓',
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w700,
            color: surfaceColor,
          ),
        ),
        const SizedBox(height: 14),
        Text(
          '중고 거래부터 동네 정보까지\n 지금 내 동네를 선택하고 시작해보세요!',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            color: surfaceColor,
          ),
        ),
      ],
    );
  }

  Widget _buildButton(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, '/home'),
          style: ElevatedButton.styleFrom(
            backgroundColor: primaryColor,
            fixedSize: const Size(354, 56),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(6),
            ),
          ),
          child: Text(
            '시작하기',
            style: Themes.regularTheme.textTheme.headline6
                ?.copyWith(color: onPrimaryColor),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '이미 계정이 있나요?',
              style: TextStyle(
                color: surfaceColor,
                fontWeight: FontWeight.w400,
              ),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, '/signIn'),
              child: Text(
                '로그인',
                style: TextStyle(
                  color: primaryColor,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
