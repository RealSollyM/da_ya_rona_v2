import 'package:da_ya_rona/root.dart';
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
        child: ListView(
          children: [
            _LogoSection(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: _SignInFormSection(),
            ),
            _SignUpSection(),
            Spacer(),
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
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
      child: LitAuth(
        config: AuthConfig(
          title: SizedBox(height: 0),
          emailTextField: TextFieldConfig(
            inputDecoration: InputDecoration(
              labelText: 'Username:',
              icon: Icon(Icons.account_circle),
            ),
          ),
          passwordTextField: TextFieldConfig(
            inputDecoration: InputDecoration(
              labelText: 'Password:',
              icon: Icon(Icons.vpn_key),
            ),
          ),
          signInButton: ButtonConfig.raised(
            themedata: ButtonThemeData(
              buttonColor: Colors.blue[800],
              hoverColor: Colors.blue,
              textTheme: ButtonTextTheme.primary,
            ),
            child: Text('Sign In'),
          ),
        ),
        onAuthSuccess: () => Get.to(RootWidget()),
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
      color: Color(0xFF042048),
      height: Get.height * 0.4,
      alignment: Alignment.bottomCenter,
      child: Container(
        child: Image.asset(
          'assets/images/da_logo_1.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }
}
