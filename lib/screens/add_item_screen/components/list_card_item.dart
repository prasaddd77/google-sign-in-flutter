import 'package:flutter/material.dart';

import '../../../model/card_item.dart';

class ListCardItem extends StatelessWidget {
  const ListCardItem({
    Key? key,
    required this.items,
  }) : super(key: key);

  final CardItem items;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.black,
      ),
      child: Stack(
        children: [
          Image.asset(
            items.firstImage,
            height: 185,
            width: 163,
          ),
          Image.asset(
            items.secondImage,
            height: 185,
            width: 163,
          ),
        ],
      ),
    );
  }
}
