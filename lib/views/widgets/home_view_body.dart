import 'package:basketball_points/views/widgets/team_a_data.dart';
import 'package:basketball_points/views/widgets/team_b_data.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TeamAData(),
            SizedBox(
              height: 570,
              child: VerticalDivider(
                thickness: 2,
                color: Color(0xffDFDFDF),
                indent: 30,
                endIndent: 22,
              ),
            ),
            TeamBData(),
          ],
        ),
      ],
    );
  }
}
