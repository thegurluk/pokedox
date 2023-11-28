import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedox_uygulamasi/constants/ui_helper.dart';
import 'package:pokedox_uygulamasi/model/pokemon_model.dart';
import 'package:pokedox_uygulamasi/widgets/poke_information.dart';

import '../widgets/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;

  const DetailPage({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: UiHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: UiHelper.getIconPadding(),
            child: IconButton(
                iconSize: 24.w,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios)),
          ),
          PokeNameType(
            pokemon: pokemon,
          ),
          SizedBox(height: 20.h),
          Expanded(child: PokeInformation(pokemon: pokemon)),
        ],
      )),
    );
  }
}
