import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

import '../views.dart';

class SignInView extends StatelessWidget {
  const SignInView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            _LogoSection(),
            _SignInFormSection(),
            Spacer(),
            _SignUpSection(),
          ],
        ),
      ),
    );
  }
}

class _SignUpSection extends StatelessWidget {
  const _SignUpSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 30,
            // top: 20,
          ),
          child: GestureDetector(
              onTap: () => Get.to(SignUpView()),
              child: Text('Don\'t have an account? Sign up here.')),
        ),
      ),
    );
  }
}

class _SignInFormSection extends StatelessWidget {
  const _SignInFormSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      height: Get.height * 0.6,
      child: LitAuth(
        onAuthSuccess: () => Get.to(DashboardView()),
      ),
    );
  }
}

class _LogoSection extends StatelessWidget {
  const _LogoSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: Get.height * 0.3,
    );
  }
}
