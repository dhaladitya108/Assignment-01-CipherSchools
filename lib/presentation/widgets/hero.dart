import 'package:avatar_stack/avatar_stack.dart';
import 'package:cipher_schools/config/colors.dart';
import 'package:cipher_schools/config/config.dart';
import 'package:flutter/material.dart';

class MyHero extends StatelessWidget {
  const MyHero({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: [
              const SizedBox(height: 56),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'Welcome to ',
                    style: TextStyle(
                      fontSize: 38,
                      color: Colors.black87,
                      fontWeight: FontWeight.w700,
                      height: 1.4,
                    ),
                    children: [
                      TextSpan(
                        text: 'the Future ',
                        style: TextStyle(color: AppColors.primary),
                      ),
                      TextSpan(
                        text: 'of Learning!',
                      ),
                    ]),
              ),
              const SizedBox(height: 32),
              RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                    text: 'Start Learning by best creators for ',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.black87,
                      height: 1.3,
                    ),
                    children: [
                      TextSpan(
                          text: 'absolutely Free',
                          style: TextStyle(color: AppColors.primary)),
                    ]),
              ),
              const SizedBox(height: 32),
              Row(
                children: [
                  Row(
                    children: [
                      AvatarStack(
                        height: 50,
                        width: 150,
                        avatars: [
                          for (var n = 0; n < 3; n++)
                            NetworkImage('https://i.pravatar.cc/150?img=$n'),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            '50+',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                color: Colors.black87),
                          ),
                          SizedBox(height: 2),
                          Text('Mentors',
                              style: TextStyle(color: Colors.black87)),
                        ],
                      )
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8),
                    height: 32,
                    width: 1,
                    color: Colors.black12,
                  ),
                  Column(
                    children: [
                      const Text(
                        '4.8/5',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.black87),
                      ),
                      const SizedBox(height: 2),
                      Row(
                        children: const [
                          Image(image: AppImages.rating),
                          SizedBox(width: 4),
                          Text('Rating',
                              style: TextStyle(color: Colors.black87)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 32),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor: MaterialStateProperty.all(AppColors.primary),
                  padding: MaterialStateProperty.all(
                      const EdgeInsets.symmetric(vertical: 12)),
                  textStyle:
                      MaterialStateProperty.all(const TextStyle(fontSize: 16)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8))),
                ),
                child: SizedBox(
                  width: 250,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Start Learning Now'),
                      SizedBox(width: 4),
                      Icon(Icons.arrow_forward)
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 32),
              const Image(image: AppImages.heroImage),
              const SizedBox(height: 56),
            ],
          ),
        )
      ],
    );
  }
}
