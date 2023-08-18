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
    return Card(
      child: SizedBox(
        height: 130,
        child: Center(
          child: Row(children: [
            Container(
              height: 125,
              width: 130,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.grey),
              child: Image.network(
                  height: 200,
                  width: 120,
                  "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/$pokemonId.png"),
            ),
            const SizedBox(
              width: 20,
            ),
            Text(
              "${data.name}",
              style: const TextStyle(fontSize: 20),
            )
          ]),
        ),
      ),
    );
  }
}
