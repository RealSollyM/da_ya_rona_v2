import 'package:da_ya_rona/views/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LitAuthInit(
      authProviders: AuthProviders(
        anonymous: true,
        emailAndPassword: true,
      ),
      child: GetMaterialApp(
        title: 'Firebase Starter',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: SignInView(),
      ),
    );
  }
}
