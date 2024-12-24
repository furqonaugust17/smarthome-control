import 'package:flutter/material.dart';

class PopupItem extends StatefulWidget {
  final Map<String, dynamic> item;
  const PopupItem({super.key, required this.item});

  @override
  State<PopupItem> createState() => _PopupItemState();
}

class _PopupItemState extends State<PopupItem> {
  bool? isActive;

  @override
  void initState() {
    super.initState();
    setState(() {
      isActive = widget.item['status'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 37),
      height: 520,
      decoration: const BoxDecoration(
          color: Color(0xFF7AB2D3),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(widget.item['item'],
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 32)),
            (widget.item['ruangan'] != null)
                ? Text(
                    widget.item['ruangan'],
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  )
                : const SizedBox(),
            const SizedBox(
              height: 23,
            ),
            SizedBox(
              height: 200,
              child: Image.asset('assets/image/${widget.item['image']}'),
            ),
            if (widget.item['status'] != null)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Status",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Switch(
                    inactiveTrackColor: const Color(0xFFE36565),
                    inactiveThumbColor: Colors.white,
                    trackOutlineColor:
                        const WidgetStatePropertyAll(Colors.transparent),
                    activeTrackColor: const Color(0xFF9ED86B),
                    value: isActive!,
                    onChanged: (value) {
                      setState(() {
                        isActive = value;
                      });
                    },
                  )
                ],
              )
          ],
        ),
      ),
    );
  }
}
