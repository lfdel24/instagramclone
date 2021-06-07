import 'package:flutter/material.dart';
import 'package:instagramclone/src/core/widgets/custom_appbar.dart';
import 'package:instagramclone/src/pages/widgets/history_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(),
      body: _BuilderBody(),
    );
  }
}

class _BuilderBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          HistoryWidget(),
          Divider(),
        ],
      ),
    ));
  }
}
