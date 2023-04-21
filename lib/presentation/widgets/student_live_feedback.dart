import 'package:cipher_schools/config/colors.dart';
import 'package:cipher_schools/config/config.dart';
import 'package:flutter/material.dart';

class StudentLiveFeedback extends StatelessWidget {
  const StudentLiveFeedback({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 32),
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 12),
      color: const Color(0xff353a42),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Student LIVE Feedback',
            style: TextStyle(
                color: AppColors.primary,
                fontSize: 16,
                fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 8),
          const Text(
            'We love to read them',
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.w500),
          ),
          const SizedBox(height: 12),
          const Text(
            'Feedback is a significant component of our success because it inspires us to get better and meet the expectations of our students.',
            style: TextStyle(color: Colors.white, height: 1.3),
          ),
          const SizedBox(height: 24),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AppImages.avImage,
                    ),
                    const SizedBox(width: 8),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Awanit Singh',
                          style: TextStyle(
                            fontSize: 16,
                            color: AppColors.primary,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Hyper Text Markup Language (HTML)',
                          style: TextStyle(
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                const Text(
                  'Thank you for giving me these types of videos. That help to understand HTML and CSS',
                  style: TextStyle(fontSize: 16, color: Colors.black87),
                ),
                const SizedBox(height: 28),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Content'),
                        SizedBox(height: 4),
                        Image(
                          image: AppImages.fullRating,
                        )
                      ],
                    ),
                    const SizedBox(width: 88),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Mentor'),
                        SizedBox(height: 4),
                        Image(
                          image: AppImages.fullRating,
                        )
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Platform'),
                        SizedBox(height: 4),
                        Image(
                          image: AppImages.fullRating,
                        )
                      ],
                    ),
                    const SizedBox(width: 88),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('Community'),
                        SizedBox(height: 4),
                        Image(
                          image: AppImages.fullRating,
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
