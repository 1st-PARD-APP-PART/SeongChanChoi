import 'package:clone_homework_seongchanchoi/components/itemTiles.dart';
import 'package:clone_homework_seongchanchoi/models/items.dart';
import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        title: TextButton(
          child: Text(
            '한동대',
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          onPressed: () => Navigator.pushNamed(context, '/signUp'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 28,
              color: Colors.black,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.notifications_none,
              size: 28,
              color: Colors.black,
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/upload'),
        child: Icon(
          Icons.add,
          color: onSurface[50],
        ),
        backgroundColor: primary,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          Size size = MediaQuery.of(context).size;
          final imgSize = size.width / 4;

          return ListView.separated(
            padding: EdgeInsets.fromLTRB(26, 12, 22, 18),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () => Navigator.pushNamed(context, '/detail'),
                child: ItemTiles(
                  items[index],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                thickness: 1,
              );
            },
          );
        },
      ),
    );
  }
}
