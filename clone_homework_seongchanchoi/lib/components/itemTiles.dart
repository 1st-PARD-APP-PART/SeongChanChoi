import 'package:clone_homework_seongchanchoi/models/items.dart';
import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:extended_image/extended_image.dart';
import 'package:flutter/material.dart';

class ItemTiles extends StatelessWidget {
  final Items _items;

  ItemTiles(this._items);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 110,
      child: Row(
        children: [
          SizedBox(
            height: 100,
            width: 100,
            child: ExtendedImage.asset(
              _items.itemImage,
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          SizedBox(
            width: 13,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text(_items.name,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      color: onSurface[900],
                    )),
                SizedBox(height: 5),
                Text(
                  _items.location,
                  style: TextStyle(
                    fontSize: 12,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    color: Color(0xff717171),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    _items.isReserved
                        ? Container(
                            height: 20,
                            width: 53,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Color(0xff34BF9E),
                            ),
                            child: Center(
                              child: Text(
                                '예약중',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          )
                        : _items.isSold
                            ? Container(
                                height: 20,
                                width: 53,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: Color(0xff565656),
                                ),
                                child: Center(
                                  child: Text(
                                    '판매완료',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 11,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w400,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                    SizedBox(width: 8),
                    Text('${_items.price} 원',
                        style: TextStyle(
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700)),
                  ],
                ),
                Expanded(
                  child: Container(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: SizedBox(
                        width: 40,
                        child: Row(
                          children: [
                            Icon(Icons.favorite_border),
                            SizedBox(width: 7),
                            Text(
                              '7',
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
    // ListTile(
    //   dense: true,
    //   visualDensity: VisualDensity(vertical: 3),
    //   leading: Container(
    //     height: 100,
    //     width: 100,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.circular(10),
    //       image: DecorationImage(
    //         image: AssetImage(_items.itemImage),
    //         fit: BoxFit.cover,
    //       ),
    //     ),
    //     child: Image.asset(
    //       _items.itemImage,
    //       fit: BoxFit.cover,
    //     ),
    //   ),
    //   title: Text(_items.name),
    //   subtitle: Column(
    //     children: [
    //       Text(_items.location),
    //       Row(
    //         children: [
    //           _items.isReserved
    //               ? Text(
    //                   '예약중',
    //                   style: TextStyle(color: Colors.red),
    //                 )
    //               : Text(''),
    //           _items.isSold
    //               ? Text(
    //                   '판매완료',
    //                   style: TextStyle(color: Colors.red),
    //                 )
    //               : Text(''),
    //           Text(_items.price),
    //         ],
    //       ),
    //       Row(
    //         children: [
    //           SizedBox(),
    //           IconButton(
    //             onPressed: () {},
    //             icon: Icon(Icons.favorite),
    //           ),
    //           Text('7'),
    //         ],
    //       ),
    //     ],
    //   ),
    // );
  }
}
