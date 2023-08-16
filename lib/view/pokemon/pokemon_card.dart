part of '../../utils/import/app_import.dart';

class PokemonCard extends StatelessWidget {
  const PokemonCard({
    super.key,
    required this.data,
    required this.pokemonId,
  });
  final int pokemonId;
  final Results data;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
          "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/$pokemonId.png"),
      title: Text('${data.name}'),
    );
  }
}
