import 'package:colours/colours.dart';
import 'package:education/images.dart';
import 'package:education/screens/course_screen.dart';
import 'package:education/widgets/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/text.dart';
import '../widgets/textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset(
                      'assets/menu.svg',
                      height: 25,
                      width: 25,
                    ),
                    CircleAvatar(
                      backgroundColor: Colours.mintCream,
                      child: SvgPicture.asset(
                        'assets/profile.svg',
                        height: 23,
                        width: 23,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    EduText(
                      data: 'Hey Ali',
                      size: 30,
                      font: FontWeight.bold,
                    ),
                    const SizedBox(height: 15),
                    EduText(
                      data: 'Search a new course',
                      color: Colors.grey,
                      font: FontWeight.w600,
                    ),
                    const SizedBox(height: 40),
                    EduTextField(
                      icon: const Icon(Icons.search),
                      color: Colors.grey.shade200,
                      textLabel: 'Search anything',
                      controller: searchController,
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    EduText(
                      data: 'Categories',
                      size: 28,
                      font: FontWeight.bold,
                    ),
                    EduText(
                      data: 'See all',
                      font: FontWeight.bold,
                      size: 24,
                      color: Colors.blue,
                    )
                  ],
                ),
                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: double.infinity,
                  height: Images().count * 200,
                  child: MasonryGridView.count(
                    crossAxisCount: 2,
                    mainAxisSpacing: 14,
                    crossAxisSpacing: 14,
                    itemCount: Images().count,
                    itemBuilder: (BuildContext context, int index) {
                      return EduCourse(index: index);
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
