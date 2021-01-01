import 'package:da_ya_rona/root.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({
    Key key,
    this.showHeader = true,
    this.showFooter = true,
  }) : super(key: key);

  final bool showHeader;
  final bool showFooter;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if (showHeader) _DashboardTop(),
        _DashboardBody(),
        if (showFooter) _DashboardBottom(),
      ],
    );
  }
}

class _DashboardBody extends StatelessWidget {
  const _DashboardBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          color: Colors.purple,
          height: MediaQuery.of(context).size.height * 0.15,
          child: Center(
            child: Text('Dashboard Layout'),
          )),
    );
  }
}

class _DashboardBottom extends StatelessWidget {
  const _DashboardBottom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: MediaQuery.of(context).size.height * 0.05,
    );
  }
}

class _DashboardTop extends StatelessWidget {
  const _DashboardTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 30, 15, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu),
            GestureDetector(
              onTap: () {
                context.signOut();
                Get.to(RootWidget());
              },
              child: Icon(Icons.power_settings_new),
            ),
          ],
        ),
      ),
    );
  }
}
