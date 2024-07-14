import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/size.dart';
import 'package:myapp/widgets/drawer_mobile.dart';
import 'package:myapp/widgets/header_desktop.dart';
import 'package:myapp/widgets/header_mobile.dart';
import 'package:myapp/widgets/main_desktop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
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
                HeaderDesktop(
                  onLogoTap: () {},
                )
              else
                HeaderMobile(
                  onLogoTap: () {},
                  onMenuTap: () {
                    scaffoldKey.currentState?.openEndDrawer();
                  },
                ),
              // banner
              const MainDesktop(),

              // Skills
              Container(
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
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
