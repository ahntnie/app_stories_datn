import 'package:app_stories/base/base.page.dart';
import 'package:flutter/material.dart';

class ListStoriesView extends StatefulWidget {
  const ListStoriesView({super.key});

  @override
  State<ListStoriesView> createState() => _ListStoriesViewState();
}

class _ListStoriesViewState extends State<ListStoriesView> {
  @override
  Widget build(BuildContext context) {
    return BasePage(
      body: Center(
        child: Text('List stories view'),
      ),
    );
  }
}
