import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        elevation: 1,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text('모모로',
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.black)),
      ),
      body: Column(
        children: [
          _buildDescription(),
          Divider(
            color: onSurface[200],
            thickness: 1,
          ),
          SizedBox(
            height: 35,
          ),
          SizedBox(
            width: size.width * 0.9,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildMessage('저랑 사귀실래요?', primary, isMe: true),
                SizedBox(height: 24),
                _buildMessage('안돼요.', onPrimaryColor),
              ],
            ),
          ),
          Expanded(child: Container()),
          _buildSendMessage(),
          SizedBox(height: 20)
        ],
      ),
    );
  }

  Widget _buildDescription() {
    return ListTile(
      contentPadding: EdgeInsets.fromLTRB(27.0, 14.0, 49.0, 14.0),
      leading: SizedBox(
        width: 48,
        height: 46,
        child: ExtendedImage.asset(
          'assets/laptop.png',
          shape: BoxShape.rectangle,
          fit: BoxFit.cover,
        ),
      ),
      title: Row(
        children: [
          Text('판매중 '),
          Text('맥북'),
        ],
      ),
      subtitle: Text('790,000원'),
      trailing: SizedBox(
        width: 100,
        height: 45,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 0,
            backgroundColor: backgroundColor,
            side: BorderSide(
              color: Color(0xffAAAAAA),
              width: 1,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              Icon(
                Icons.calendar_today,
                size: 18,
                color: Colors.black,
              ),
              Text(
                ' 예약하기',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessage(String string, Color color, {bool isMe = false}) {
    return Row(
      children: [
        isMe
            ? Expanded(child: Container())
            : Icon(
                Icons.account_circle,
                size: 52,
                color: onSurface[400],
              ),
        Container(
          width: 211,
          height: 49,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.all(Radius.circular(13)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 21, vertical: 16),
            child: Text(
              string,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                color: isMe ? Colors.white : Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSendMessage() {
    return Container(
      child: Row(
        children: [
          SizedBox(
            width: 27,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                hintText: '메시지를 입력해주세요',
                hintStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: onSurface[400],
                ),
                fillColor: onSurface[100],
                filled: true,
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.circular(13),
                ),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: primary,
              borderRadius: BorderRadius.all(Radius.circular(13)),
            ),
            child: Center(
              child: Icon(
                Icons.send,
                color: Colors.white,
              ),
            ),
          ),
          SizedBox(
            width: 27,
          ),
        ],
      ),
    );
  }
}
