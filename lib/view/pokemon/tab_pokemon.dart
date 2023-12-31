part of "../../utils/import/app_import.dart";

class TabPokemon extends StatefulWidget {
  const TabPokemon({super.key});

  @override
  State<TabPokemon> createState() => _TabPokemonState();
}

class _TabPokemonState extends State<TabPokemon> {
  @override
  Widget build(BuildContext context) {
    ApiController pApiPokemon = Provider.of<ApiController>(context);
    return pApiPokemon.loading
        ? const SkeltonView()
        : (pApiPokemon.pokemonData?.results != null &&
                pApiPokemon.pokemonData!.results!.isNotEmpty)
            ? RefreshIndicator(
                onRefresh: onRefresh,
                child: const PokemonGridelBuilder(),
              )
            : const ErrorText(title: "No Data");
  }

  Future<void> onRefresh() async {
    ApiController pApiPokemon =
        Provider.of<ApiController>(context, listen: false);
    pApiPokemon.fetchDataPokemon(context);
  }
}
