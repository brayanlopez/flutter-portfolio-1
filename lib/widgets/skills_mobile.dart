import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/constants/cv_data.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 0; i < platformItems.length; i++)
          Container(
            margin: const EdgeInsets.only(bottom: 5.0),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: CustomColor.bgLight2,
              borderRadius: BorderRadius.circular(5),
            ),
            child: ListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              leading: const Icon(Icons.temple_buddhist),
              title: Text(platformItems[i]["title"]),
            ),
          ),
        const SizedBox(height: 50),
        Wrap(children: [
          for (int i = 0; i < skillItems.length; i++)
            Chip(
              padding: const EdgeInsets.symmetric(
                vertical: 12,
                horizontal: 60,
              ),
              backgroundColor: CustomColor.bgLight2,
              avatar: const Icon(Icons.code_off),
              label: Text(skillItems[i]["title"]),
            )
        ])
      ],
    );
  }
}
