import 'package:flutter/material.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Divider(),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Text('Knowledge',style: TextStyle(color: Colors.white),),
        ),
        KnowledgeText(knowledge: 'Flutter, Dart'),
        KnowledgeText(knowledge: 'Styless, Sauss, Less'),
        KnowledgeText(knowledge: 'Gulp, Webpack, Grunt'),
        KnowledgeText(knowledge: 'GIT KNOWLEDGE'),
      ],
    );
  }
}
