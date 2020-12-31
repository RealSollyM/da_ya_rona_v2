import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.pink[200],
        child: Column(
          children: [
            _LogoSection(),
            _SignUpFormSection(),
            _SocialButtonsSection(),
            Spacer(),
            _SignInSection(),
          ],
        ),
      ),
    );
  }
}

class _SignInSection extends StatelessWidget {
  const _SignInSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 50,
            top: 30,
          ),
          child: GestureDetector(
              onTap: () => Get.to(SignInView()),
              child: Text('Have an account already? Sign in here.')),
        ),
      ),
    );
  }
}

class _SocialButtonsSection extends StatelessWidget {
  const _SocialButtonsSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      height: 200,
    );
  }
}

class _SignUpFormSection extends StatelessWidget {
  const _SignUpFormSection({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple,
      height: 200,
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
      height: 200,
    );
  }
}
