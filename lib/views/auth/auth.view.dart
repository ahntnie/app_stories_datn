import 'package:app_stories/base/base.page.dart';
import 'package:flutter/material.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Center(
        child: Text('Auth view'),
      ),
    );
  }
}
