import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

    final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
              'assets/quiz-logo.png',
              width: 300,
              color: const Color.fromARGB(143, 255, 255, 255),

          ),
          const SizedBox(height: 30),
          const Text(
            'Quiz Game',
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          const SizedBox(
            height: 30,
          ),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: const Color.fromARGB(224, 17, 17, 98),
            ),
            icon: const Icon(Icons.play_arrow),
            label : const Text('Start'),
          )
        ],
      ),
    );
  }
}
