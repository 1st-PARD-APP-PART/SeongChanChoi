import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UploadPage extends StatelessWidget {
  const UploadPage({super.key});

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
            Icons.close,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
        title: Text('중고거래 글쓰기',
            style: Theme.of(context)
                .textTheme
                .headline3
                ?.copyWith(color: Colors.black)),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              '완료',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                  color: Theme.of(context).colorScheme.primary,
                  fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
      body: Center(
        child: SizedBox(
          width: size.width * 0.9,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 24),
              Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                  ),
                  Icon(
                    Icons.camera_alt,
                    size: 30,
                    color: Colors.black,
                  ),
                ],
              ),
              Divider(
                height: 50,
                thickness: 3,
                color: onSurface[100],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '제목',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 15),
                ],
              ),
              Divider(
                height: 50,
                thickness: 3,
                color: onSurface[100],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '카테고리 선택',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 15),
                ],
              ),
              Divider(
                height: 50,
                thickness: 3,
                color: onSurface[100],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '지역',
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                          color: Colors.black,
                        ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 15),
                ],
              ),
              Divider(
                height: 50,
                thickness: 3,
                color: onSurface[100],
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
