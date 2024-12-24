import 'package:flutter/material.dart';
import 'package:smart_control/widgets/popup_item.dart';

class Item extends StatelessWidget {
  final Map<String, dynamic> item;
  const Item({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return PopupItem(item: item);
          },
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 180,
        width: 180,
        decoration: BoxDecoration(
            color: const Color(0xFF7AB2D3),
            borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text(
                  item['item'],
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                (item['ruangan'] != null)
                    ? Text(
                        item['ruangan'],
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    : const SizedBox(),
              ],
            ),
            Expanded(
                child: SizedBox(
              height: 116,
              width: 116,
              child: Image.asset('assets/image/${item['image']}'),
            ))
          ],
        ),
      ),
    );
  }
}
