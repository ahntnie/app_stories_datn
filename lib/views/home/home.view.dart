import 'package:app_stories/base/base.page.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Center(
        child: Text('Home view'),
      ),
    );
  }
}
