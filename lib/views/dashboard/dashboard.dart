import 'package:da_ya_rona/models/models.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

import 'dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final litUser = context.getSignedInUser();

    litUser.when(
      (u) {
        AppUser user = AppUser();
        user.id = u.uid;
        user.email = u.email;
        user.name = u.displayName;
        user.phoneNumber = u.phoneNumber;

        Get.put<AppUser>(user);
      },
      empty: () {},
      initializing: () {},
    );

    return Scaffold(
      body: DashboardLayout(),
    );
  }
}
