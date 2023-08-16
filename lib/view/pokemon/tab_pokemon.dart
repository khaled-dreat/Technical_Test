part of "../../utils/import/app_import.dart";

class TabPokemon extends StatefulWidget {
  const TabPokemon({super.key});

  @override
  State<TabPokemon> createState() => _TabPokemonState();
}

class _TabPokemonState extends State<TabPokemon> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () {
        ApiController pApiPokemon =
            Provider.of<ApiController>(context, listen: false);
        pApiPokemon.fetchDataPokemon(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ApiController pApiPokemon = Provider.of<ApiController>(context);
    return pApiPokemon.loading
        ? const CircularProgressIndicator()
        : (pApiPokemon.pokemonData?.results != null &&
                pApiPokemon.pokemonData!.results!.isNotEmpty)
            ? const PokemonGridelBuilder()
            : const ErrorText(title: "لا يوجد بيانات");
  }
}
