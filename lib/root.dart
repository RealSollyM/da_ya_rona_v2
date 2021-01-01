import 'package:da_ya_rona/views/views.dart';
import 'package:flutter/material.dart';
import 'package:lit_firebase_auth/lit_firebase_auth.dart';

class RootWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LitAuthState(
      authenticated: DashboardView(),
      unauthenticated: SignInView(),
    );
  }
}
