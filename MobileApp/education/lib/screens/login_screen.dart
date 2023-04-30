import 'package:colours/colours.dart';
import 'package:education/screens/bottom_navigation.dart';
import 'package:education/widgets/button.dart';
import 'package:education/widgets/text.dart';
import 'package:education/widgets/textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController username = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colours.tan,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity, //MediaQuery.of(context).size.width,
                height: 260,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30.0,
                    vertical: 60,
                  ),
                  child: Column(
                    children: [
                      EduText(
                        data: 'Login Page',
                        size: 40,
                        font: FontWeight.w900,
                      ),
                      const SizedBox(height: 10),
                      SvgPicture.asset(
                        'assets/education.svg',
                        height: 70,
                        width: 70,
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 274,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 50.0, horizontal: 30),
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      EduTextField(
                        icon: const Icon(Icons.person),
                        color: Colours.grey.shade200,
                        controller: username,
                        textLabel: 'Username',
                      ),
                      EduTextField(
                        icon: const Icon(Icons.admin_panel_settings),
                        color: Colours.grey.shade200,
                        controller: password,
                        textLabel: 'Password',
                      ),
                      const SizedBox(height: 50),
                      MaterialButton(
                        color: Colors.black,
                        minWidth: 300,
                        height: 60,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24)),
                        onPressed: () => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                                builder: (context) => const BottomNavScreen())),
                        child: EduText(
                          data: 'Login',
                          color: Colors.white,
                          size: 22,
                          font: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
