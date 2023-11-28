// ignore_for_file: unused_local_variable

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedox_uygulamasi/constants/ui_helper.dart';
import 'package:pokedox_uygulamasi/model/pokemon_model.dart';

class PokeImageAndBall extends StatelessWidget {
  final PokemonModel pokemon;

  const PokeImageAndBall({super.key, required this.pokemon});

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = 'images/pokeball.png';
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeballImageUrl,
            width: UiHelper.calculatePokeImageAndBallSize(),
            height: UiHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: CachedNetworkImage(
            imageUrl: pokemon.img ?? '',
            width: UiHelper.calculatePokeImageAndBallSize(),
            height: UiHelper.calculatePokeImageAndBallSize(),
            fit: BoxFit.fitHeight,
            placeholder: (context, url) => const CircularProgressIndicator(
              color: Colors.red,
            ),
          ),
        )
      ],
    );
  }
}
