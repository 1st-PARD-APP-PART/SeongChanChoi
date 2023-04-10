import 'package:clone_homework_seongchanchoi/utils/colors.dart';
import 'package:flutter/material.dart';

class SelectLocalPage extends StatelessWidget {
  final itemTitle = '경상북도 포항시 북구 흥해읍 한동로 558';
  const SelectLocalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
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
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Text(
            '근처 동네',
            style: TextStyle(
              color: surfaceColor,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              fontSize: 10,
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 11,
            itemBuilder: (context, index) {
              return ListTile(
                dense: true,
                contentPadding: const EdgeInsets.symmetric(horizontal: 27),
                visualDensity: const VisualDensity(horizontal: 0, vertical: -2),
                title: Text(
                  itemTitle,
                  style: TextStyle(
                    color: surfaceColor,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider(
                thickness: 1,
              );
            },
          ),
        ),
      ],
    );
  }
}
