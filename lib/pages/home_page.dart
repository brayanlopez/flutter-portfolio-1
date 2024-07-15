
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/widgets/drawer_mobile.dart';
import 'package:myapp/widgets/header_desktop.dart';
import 'package:myapp/widgets/header_mobile.dart';
import 'package:myapp/widgets/main_desktop.dart';
import 'package:myapp/widgets/main_mobile.dart';
import 'package:myapp/widgets/skills_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth < kMinDesktopWidth
              ? const DrawerMobile()
              : null,
          body: ListView(
            scrollDirection: Axis.vertical,
            children: [
              // MAIN
              if (constraints.maxWidth > kMinDesktopWidth)
                Column(
                  children: [
                    HeaderDesktop(
                      onLogoTap: () {},
                    ),
                    const MainDesktop()
                  ],
                )
              else
                Column(
                  children: [
                    HeaderMobile(
                      onLogoTap: () {},
                      onMenuTap: () {
                        scaffoldKey.currentState?.openEndDrawer();
                      },
                    ),
                    const MainMobile(),
                  ],
                ),
              // banner
              // MainMobile(),

              // Skills
              Container(
                width: screenWidth,
                color: CustomColor.bgLight1,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text(
                      "What I can do",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: CustomColor.whitePrimary,
                      ),
                    ),
                    const SizedBox(height: 20),
                    SkillsDesktop()
                  ],
                ),
              ),
              // Project
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // Contact
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
              // Footer
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),
            ],
          ),
        );
      },
    );
  }
}

