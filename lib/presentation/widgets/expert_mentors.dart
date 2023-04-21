import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ExpertMentors extends StatelessWidget {
  const ExpertMentors({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32),
      child: Column(
        children: [
          const Text('Expert Mentors',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700)),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileContainer(),
              ProfileContainer(),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Container(
            height: 100,
            width: 150,
            decoration: BoxDecoration(
              color: Color(0xff353a42),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ),
        Image.network(
          'https://ik.imagekit.io/cipherschools/CipherMentors/Aman-Amazon.png',
          height: 150,
          width: 150,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
