import 'package:colours/colours.dart';
import 'package:education/images.dart';
import 'package:education/screens/course_screen.dart';
import 'package:education/widgets/course.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/drawer.dart';
import '../widgets/text.dart';
import '../widgets/textfield.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();
  List<String> groups = [
    '1.group',
    '2.group',
    '3.group',
    '4.group',
  ];
  List<String> topics1 = [
    "Physics",
    'Geology',
    "Computer Science",
    "Mathematics",
  ];
  List<String> topics2 = [
    'Sociology',
    "Economics",
    "Finance",
    "Geography ",
  ];
  List<String> topics3 = [
    "History teaching",
    "Philosophy ",
    "Jurisprudence",
    "History",
  ];
  List<String> topics4 = [
    "Chemistry",
    "Pharmacy",
    "Nursing ",
    "Medicine",
  ];

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: EduDrawer(datas: groups),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25.0),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Builder(
                        builder: (context) => IconButton(
                          onPressed: () => Scaffold.of(context).openDrawer(),
                          icon: SvgPicture.asset(
                            'assets/menu.svg',
                            width: 28,
                            height: 28,
                          ),
                        ),
                      ),
                      SvgPicture.asset(
                        'assets/profile.svg',
                        width: 26,
                        height: 26,
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      EduText(
                        data: 'Hey Ali',
                        size: 32,
                        font: FontWeight.bold,
                      ),
                      const SizedBox(height: 10),
                      EduText(
                        data: 'Find a true resource which you want',
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
                  SizedBox(
                    child: TabBar(
                        indicatorColor: Colors.black,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.grey[400],
                        labelPadding: const EdgeInsets.all(10),
                        labelStyle: const TextStyle(
                            fontSize: 26, fontWeight: FontWeight.bold),
                        controller: tabController,
                        tabs: const [Text('Course'), Text('Guide')]),
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: TabBarView(
                        controller: tabController,
                        children: [courseContainer(), bookContainer()]),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

Widget courseContainer() {
  return Container(
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
  );
}

Widget bookContainer() {
  return Container(
    padding: const EdgeInsets.all(8),
    width: double.infinity,
    height: Images().count * 200,
    child: ListView.builder(
      itemCount: Images().count,
      itemBuilder: (BuildContext context, int index) {
        return EduText(data: '$index');
      },
    ),
  );
}
