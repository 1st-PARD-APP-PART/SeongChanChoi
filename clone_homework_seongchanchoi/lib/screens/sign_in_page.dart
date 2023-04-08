import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:flutter/material.dart';

class SignInPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: surfaceColor,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: _buildBody(context, size),
    );
  }

  Widget _buildBody(BuildContext context, Size size) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _title(context, '안녕하세요!\n휴대폰 번호로 로그인해주세요.'),
          SizedBox(height: size.height * 0.01),
          _subtitle(context, '휴대폰 번호는 안전하게 보관되며 이웃들에게 공개되지 않아요'),
          SizedBox(height: size.height * 0.02),
          _buildForm(context, size),
          SizedBox(height: size.height * 0.02),
          _buildButton(context, size),
        ],
      ),
    );
  }

  Widget _title(BuildContext context, String title) {
    return Text(
      title,
      style: TextStyle(
        color: surfaceColor,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w700,
        fontSize: 24,
      ),
    );
  }

  Widget _subtitle(BuildContext context, String subtitle) {
    return Text(
      subtitle,
      style: TextStyle(
        color: surfaceColor,
        fontFamily: 'Inter',
        fontWeight: FontWeight.w400,
        fontSize: 12,
      ),
    );
  }

  Widget _buildForm(BuildContext context, Size size) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          _buildTextField(context, size, '휴대폰 번호(- 없이 숫자만 입력)'),
          SizedBox(height: size.height * 0.01),
          _buildTextField(context, size, '비밀번호'),
        ],
      ),
    );
  }

  Widget _buildTextField(BuildContext context, Size size, String hintText) {
    return SizedBox(
      width: size.width * 0.85,
      height: size.height * 0.07,
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xffAAAAAA),
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            fontSize: 20,
          ),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Widget _buildButton(BuildContext context, Size size) {
    return ElevatedButton(
      onPressed: () {},
      // => Navigator.pushNamed(context, '/home'),
      style: ElevatedButton.styleFrom(
        backgroundColor: primaryColor,
        fixedSize: Size(size.width * 0.85, 91),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6),
        ),
      ),
      child: Text(
        '로그인',
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
