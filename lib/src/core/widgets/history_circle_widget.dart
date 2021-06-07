import 'dart:ui';

import 'package:flutter/material.dart';

class _CoreHistoryWidget extends StatelessWidget {
  final bool showIocon;
  final String text;

  const _CoreHistoryWidget({Key? key, this.showIocon = false, this.text = ""})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 16, left: 16),
              width: 80,
              height: 80,
              decoration:
                  BoxDecoration(color: Colors.red, shape: BoxShape.circle),
            ),
            Visibility(
              visible: this.showIocon,
              child: Positioned(
                bottom: 0,
                right: 10,
                child: Container(
                  alignment: Alignment.center,
                  width: 24,
                  height: 24,
                  decoration:
                      BoxDecoration(color: Colors.blue, shape: BoxShape.circle),
                  child: Icon(
                    Icons.add,
                    size: 16,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
        Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              this.text,
              style: TextStyle(fontWeight: FontWeight.w500),
            )),
      ],
    );
  }
}

class CircleHistoryWidget extends StatelessWidget {
  final String text;

  const CircleHistoryWidget({Key? key, this.text = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CoreHistoryWidget(
      showIocon: false,
      text: this.text,
    );
  }
}

class PerfilCircleHistoryWidget extends StatelessWidget {
  final String text;

  const PerfilCircleHistoryWidget({Key? key, this.text = ""}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _CoreHistoryWidget(
      showIocon: true,
      text: this.text,
    );
  }
}
