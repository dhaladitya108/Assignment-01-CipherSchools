import 'package:cipher_schools/config/colors.dart';
import 'package:cipher_schools/presentation/widgets/course_card.dart';
import 'package:flutter/material.dart';

class CourseSection extends StatelessWidget {
  const CourseSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 32,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.primary),
                child: const Text(
                  'Trendings',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(width: 32),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12),
                child: const Text('Trendings'),
              ),
              const SizedBox(width: 32),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12),
                child: const Text('Trendings'),
              ),
              const SizedBox(width: 32),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12),
                child: const Text('Trendings'),
              ),
              const SizedBox(width: 32),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.black12),
                child: const Text('Trendings'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 24),
        const CourseCard(),
        const SizedBox(height: 8),
        const CourseCard(),
        const SizedBox(height: 8),
        const CourseCard(),
        const SizedBox(height: 8),
      ],
    );
  }
}
