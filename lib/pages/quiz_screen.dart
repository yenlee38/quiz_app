import 'package:flutter/material.dart';
import '../components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({ Key? key }) : super(key: key);

  @override
  Widget  build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(actions: [
        FlatButton(onPressed: () {}, child: Text("Skip", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),))
      ],
      backgroundColor: Colors.transparent,
      elevation: 0,
      ),
      body: 
      Body(),
    );
  }
}

