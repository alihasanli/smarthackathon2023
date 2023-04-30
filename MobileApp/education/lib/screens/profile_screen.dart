import 'package:colours/colours.dart';
import 'package:education/widgets/button.dart';
import 'package:education/widgets/text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 60,
                    child: Image.network(
                        'https://www.pngall.com/wp-content/uploads/5/User-Profile-PNG-File.png'),
                  ),
                  const SizedBox(height: 20),
                  EduText(data: 'Ali Hasanli', size: 32, font: FontWeight.w700),
                  const SizedBox(height: 5),
                  EduText(
                    data: 'ADNSU Student',
                    size: 26,
                    font: FontWeight.w400,
                    color: Colors.grey,
                  )
                ],
              ),
              const SizedBox(height: 30),
              EduButton(
                text: 'Add Friend',
                color: Colors.black,
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  column(data1: '5', data2: 'Courses'),
                  const VerticalDivider(
                    color: Colors.black,
                    width: 10,
                  ),
                  column(data1: '1000', data2: 'Points'),
                  const VerticalDivider(
                    color: Colors.black,
                    width: 10,
                  ),
                  column(data1: '12', data2: 'Rank'),
                ],
              ),
              sizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}

Widget column({required String data1, required String data2}) {
  return Column(
    children: [
      EduText(
        data: data1,
        size: 20,
        font: FontWeight.w500,
      ),
      EduText(
        data: data2,
        size: 20,
        font: FontWeight.w500,
      )
    ],
  );
}

Widget sizedBox() {
  return Padding(
    padding: const EdgeInsets.all(40.0),
    child: SizedBox(
      width: double.infinity,
      height: 200,
      child: Column(
        children: [
          listTile(asset: 'assets/cap.svg', title: 'Results'),
          listTile(asset: 'assets/rank.svg', title: 'Ranking'),
          listTile(asset: 'assets/hashboard.svg', title: 'Dashboard'),
        ],
      ),
    ),
  );
}

Widget listTile({required String asset, required String title}) {
  return Container(
    margin: const EdgeInsets.only(bottom: 10),
    decoration: BoxDecoration(
      color: Colors.black,
      borderRadius: BorderRadius.circular(18),
    ),
    child: ListTile(
      leading: SvgPicture.asset(
        asset,
        width: 35,
        height: 35,
        color: Colors.white,
      ),
      title: EduText(
        data: title,
        size: 24,
        font: FontWeight.w500,
        color: Colors.white,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios,
        color: Colors.white,
        size: 22,
      ),
    ),
  );
}
