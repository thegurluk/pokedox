// ignore_for_file: unused_field, unused_local_variable

import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pokedox_uygulamasi/model/pokemon_model.dart';

class PokeApi {
  static const String _url =
      'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';

  static Future<List<PokemonModel>> getPokemnData() async {
    List<PokemonModel> _List = [];

    var result = await Dio().get(_url);
    var pokeList = jsonDecode(result.data)['pokemon'];

    if (pokeList is List) {
      _List = pokeList.map((e) => PokemonModel.fromJson(e)).toList();
    } else {
      return [];
    }
    debugPrint(_List.first.toString());

    return _List;
  }
}
