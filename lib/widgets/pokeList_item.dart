import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedox_uygulamasi/constants/constant.dart';
import 'package:pokedox_uygulamasi/constants/ui_helper.dart';
import 'package:pokedox_uygulamasi/model/pokemon_model.dart';
import 'package:pokedox_uygulamasi/page/detail_page.dart';
import 'package:pokedox_uygulamasi/widgets/poke_image_and_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeListItem({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => DetailPage(pokemon: pokemon),
        ));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.red.shade200,
        color: UiHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UiHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                pokemon.name ?? 'N/A',
                style: Constants.getPokemonNameTextStyle(),
              ),
              Chip(
                  label: Text(
                pokemon.type![0],
                style: Constants.getTypeChipTextStyle(),
              )),
              Expanded(child: PokeImageAndBall(pokemon: pokemon)),
            ],
          ),
        ),
      ),
    );
  }
}
