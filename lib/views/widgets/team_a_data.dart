import 'package:basketball_points/cubit/counter_cubit.dart';
import 'package:basketball_points/cubit/counter_state.dart';
import 'package:basketball_points/views/widgets/custom_counter_button.dart';
import 'package:basketball_points/views/widgets/custom_reset_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class TeamAData extends StatelessWidget {
  const TeamAData({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CounterCubit, CounterState>(
  builder: (context, state) {
    return Expanded(
      child: SizedBox(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text(
              'Team A',
              style: TextStyle(
                fontSize: 35,
              ),
            ),
            Text(
              '${BlocProvider.of<CounterCubit>(context).teamAPoint}',
              style: const TextStyle(
                fontSize: 110,
              ),
            ),
            CustomCounterButton(
              text: 'Add 1 Point',
              onPressed: () {
                BlocProvider.of<CounterCubit>(context)
                    .teamCounter(teamName: 'A', buttonNumber: 1);
              },
              deleteOnPressed: (){
                BlocProvider.of<CounterCubit>(context).deleteTeamPoint(teamName: 'A', buttonNumber: 1,);
              },
            ),
            CustomCounterButton(
              text: 'Add 2 Point',
              onPressed: () {
                BlocProvider.of<CounterCubit>(context)
                    .teamCounter(teamName: 'A', buttonNumber: 2);
              },
              deleteOnPressed: (){
                BlocProvider.of<CounterCubit>(context).deleteTeamPoint(teamName: 'A', buttonNumber: 2,);
              },
            ),
            CustomCounterButton(
              text: 'Add 3 Point',
              onPressed: () {
                BlocProvider.of<CounterCubit>(context)
                    .teamCounter(teamName: 'A', buttonNumber: 3);
              },
              deleteOnPressed: (){
                BlocProvider.of<CounterCubit>(context).deleteTeamPoint(teamName: 'A', buttonNumber: 3,);
              },
            ),
            CustomResetButton(
              teamName: 'Reset A Point',
              onPressed: () {
                BlocProvider.of<CounterCubit>(context)
                    .resetCounter(teamName: 'A');
              },
            ),
          ],
        ),
      ),
    );
  },
);
  }
}