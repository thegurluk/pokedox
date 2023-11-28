import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedox_uygulamasi/constants/constant.dart';
import 'package:pokedox_uygulamasi/constants/ui_helper.dart';
import 'package:pokedox_uygulamasi/model/pokemon_model.dart';

class PokeInformation extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeInformation({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(10.w),
          ),
          color: Colors.white),
      child: Padding(
        padding: UiHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildInformation('Name', pokemon.name),
            _buildInformation('Height', pokemon.height),
            _buildInformation('Weight', pokemon.weight),
            _buildInformation('Spawn Time', pokemon.spawnTime),
            _buildInformation('Weakness', pokemon.weaknesses),
            _buildInformation('Pro Evulation', pokemon.prevEvolution),
            _buildInformation('Next Evulation', pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

  _buildInformation(String label, dynamic value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: Constants.getPokeInfoLabelTextStyle(),
        ),
        if (value is List && value.isNotEmpty)
          Text(
            value.join(' , ').toString(),
            style: Constants.getPokeInfoTextStyle(),
          )
        else if (value == null)
          Text(
            'Not Available',
            style: Constants.getPokeInfoTextStyle(),
          )
        else
          Text(
            value.toString(),
            style: Constants.getPokeInfoTextStyle(),
          )
      ],
    );
  }
}
