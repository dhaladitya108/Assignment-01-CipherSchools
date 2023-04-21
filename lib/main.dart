import 'package:cipher_schools/config/config.dart';
import 'package:cipher_schools/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingPage(),
    );
  }
}

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 3,
        leading: const Padding(
          padding: EdgeInsets.all(12.0),
          child: Image(image: AppImages.cipherLogo),
        ),
        title: const Text(
          'CipherSchools',
          style: TextStyle(color: Colors.black87),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.density_medium_rounded,
              color: Colors.black87,
            ),
            onPressed: () {
              // Perform search action
            },
          ),
        ],
      ),
      body: const Home(),
    ));
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              children: const [
                MyHero(),
                Counts(),
                BgImageCard(
                    imageUrl:
                        'https://ik.imagekit.io/cipherschools/CipherSchools/for-student_nm1kTXQDf.jpg',
                    tag: 'Unlock your learning potential with CipherSchools',
                    name: 'Best platform for the students',
                    buttonIcon: Icons.school_outlined,
                    buttonText: 'For Students'),
                SizedBox(height: 20),
                BgImageCard(
                    imageUrl:
                        'https://ik.imagekit.io/cipherschools/CipherSchools/for-creator_sNs5MAVE7.jpg',
                    tag:
                        'Empowering students to open their minds to utmost knowledge',
                    name: 'Be the mentor you never had',
                    buttonIcon: Icons.credit_card_rounded,
                    buttonText: 'For Creators'),
              ],
            ),
          ),
          const StudentLiveFeedback(),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: const [
                  CourseSection(),
                  ExpertMentors(),
                ],
              )),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 16),
            color: const Color(0xffF2F5F9),
            child: const Text(
              '© 2020 CipherSchools • All Rights Reserved',
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
