import 'package:da_ya_rona/root.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      authProviders: AuthProviders(
        emailAndPassword: true,
        google: true,
        github: true,
        twitter: true,
      ),
      child: GetMaterialApp(
        title: 'DA ya Rona',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: RootWidget(),
      ),
    );
  }
}
