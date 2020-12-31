import 'package:flutter/material.dart';

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
        if (showHeader) DashboardTop(),
        DashboardBody(),
        if (showFooter) DashboardBottom(),
      ],
    );
  }
}

class DashboardBody extends StatelessWidget {
  const DashboardBody({
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

class DashboardBottom extends StatelessWidget {
  const DashboardBottom({
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

class DashboardTop extends StatelessWidget {
  const DashboardTop({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.15,
    );
  }
}
