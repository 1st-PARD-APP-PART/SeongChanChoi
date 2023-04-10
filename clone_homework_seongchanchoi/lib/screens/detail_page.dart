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
              fit: BoxFit.cover,
            ),
          ),
          Container(),
          ListTile(
            contentPadding: EdgeInsets.only(left: 20, top: 20, right: 20),
            leading: Icon(
              Icons.account_circle,
              size: 52,
            ),
            title: Text('파드짱'),
            subtitle: Text('한동대'),
            trailing: SizedBox(
              width: size.width * 0.3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Text(
                            '37.5℃',
                            style: TextStyle(
                              fontSize: 19,
                              fontWeight: FontWeight.w700,
                              color: Color(0xff5DB7EA),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(top: 5),
                            width: 50,
                            child: LinearProgressIndicator(
                              value: 0.5,
                              backgroundColor: Color(0xffE5E5E5),
                              valueColor: AlwaysStoppedAnimation<Color>(
                                Color(0xff5DB7EA),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(' \u{1F60A}', style: TextStyle(fontSize: 30)),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      '매너온도',
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        color: Color(0xff767070),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Divider(
            color: onSurface[200],
            thickness: 1,
          ),
          SizedBox(
            width: size.width * 0.87,
            height: size.height * 0.34,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 24),
                Text(
                  '맥북',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 24),
                Text(
                  '새 상품입니다.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Row(
                  children: [
                    Text(
                      '관심 7  ',
                      style: TextStyle(color: Color(0xff767070)),
                    ),
                    Icon(Icons.favorite_border),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: onSurface[200],
            thickness: 1,
          ),
          ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    size: 24,
                  ),
                  onPressed: () {},
                ),
                VerticalDivider(
                  color: onSurface[200],
                  thickness: 1,
                ),
              ],
            ),
            title: Text(
              '790,000원',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
              ),
            ),
            subtitle: Text(
              '가격 제안하기',
              style: TextStyle(
                color: primary,
                decoration: TextDecoration.underline,
                fontSize: 16,
                fontWeight: FontWeight.w700,
              ),
            ),
            trailing: SizedBox(
              height: 45,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: Text(
                  '채팅하기',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
                onPressed: () => Navigator.pushNamed(context, '/chat'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
