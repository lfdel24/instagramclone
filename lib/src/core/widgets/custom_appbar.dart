import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.camera_alt_outlined,
                color: Colors.black,
                size: 32,
              ),
              onPressed: () {}),
          Image.asset(
            'assets/img/logo.png',
            fit: BoxFit.cover,
            height: 40,
            width: 100,
            color: Colors.black,
          ),
        ],
      ),
      actions: [
        IconButton(
            icon: Icon(
              Icons.favorite_border_outlined,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () {}),
        IconButton(
            icon: Icon(
              Icons.send_outlined,
              color: Colors.black,
              size: 32,
            ),
            onPressed: () {}),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(56.0);
}
