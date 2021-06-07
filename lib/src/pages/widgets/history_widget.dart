import 'package:flutter/material.dart';
import 'package:instagramclone/src/core/widgets/history_circle_widget.dart';

class HistoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          PerfilCircleHistoryWidget(text: "Tu historia"),
          CircleHistoryWidget(text: "Tu historia"),
          CircleHistoryWidget(text: "Tu historia"),
          CircleHistoryWidget(text: "Tu historia"),
          CircleHistoryWidget(text: "Tu historia"),
          CircleHistoryWidget(text: "Tu historia"),
        ],
      ),
    );
  }
}
