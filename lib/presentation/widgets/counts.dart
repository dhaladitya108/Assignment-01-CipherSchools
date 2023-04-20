import 'package:cipher_schools/config/colors.dart';
import 'package:flutter/material.dart';

class Counts extends StatelessWidget {
  const Counts({super.key});

  @override
  Widget build(BuildContext context) {
    List<List<String>> counts = [
      ['15K+', 'students'],
      ['10K+', 'Certificates delivered'],
      ['450K+', 'Streamed minutes'],
      ['12TB+', 'Content streamed in last 60 days'],
      ['50+', 'Creators'],
      ['110+', 'Programs availabe']
    ];
    return Padding(
        padding: const EdgeInsets.only(top: 24, bottom: 32),
        child: SizedBox(
          height: 236,
          child: GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: counts.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 8,
                  crossAxisSpacing: 12,
                  mainAxisExtent: 81),
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Text(
                      counts[index][0],
                      style: const TextStyle(
                        fontSize: 30,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(counts[index][1],
                        textAlign: TextAlign.center,
                        style: const TextStyle(fontSize: 16)),
                  ],
                );
              }),
        ));
  }
}
