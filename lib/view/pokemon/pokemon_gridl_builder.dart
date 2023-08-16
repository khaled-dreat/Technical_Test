part of '../../utils/import/app_import.dart';

class PokemonGridelBuilder extends StatelessWidget {
  const PokemonGridelBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    ApiController pApiPokemon = Provider.of<ApiController>(context);

    int dataPokemonCount = pApiPokemon.pokemonData!.results!.length;
    List<Results> data = pApiPokemon.pokemonData!.results!;
    return ListView.builder(
      itemCount: dataPokemonCount,
      itemBuilder: (BuildContext context, int index) {
        return PokemonCard(
          pokemonId: index + 1,
          data: data.elementAt(index),
        );
      },
    );
  }
}
