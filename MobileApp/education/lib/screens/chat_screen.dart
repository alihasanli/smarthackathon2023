import 'package:education/widgets/text.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.only(right: 200, top: 50),
                  child: EduText(
                    data: 'Discover',
                    font: FontWeight.w800,
                    size: 42,
                  ),
                ),
              ),
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: listView(),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: double.maxFinite,
                height: 550,
                child: listView2(),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget listView() {
  return SizedBox(
    child: ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: 5,
      itemBuilder: (context, index) => Container(
        width: 300,
        margin: const EdgeInsets.only(left: 10, right: 10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(26),
          child: Image.network(
              'https://www.teacheracademy.eu/wp-content/uploads/2021/07/Improving_teaching_styles.png'),
        ),
      ),
    ),
  );
}

Widget listView2() {
  return SizedBox(
    child: ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: Container(
          height: 100,
          margin: const EdgeInsets.only(left: 10, right: 10),
          child: ListTile(
            title: EduText(data: 'Article'),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Image.network(
                  'https://i0.wp.com/blog.frontiersin.org/wp-content/uploads/2019/09/chemical-engineer-chemistry-industry-zeolite-ionic-polymer-e1567409711514.jpg?fit=1000%2C562&ssl=1'),
            ),
          ),
        ),
      ),
    ),
  );
}
