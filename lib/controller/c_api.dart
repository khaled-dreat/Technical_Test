part of '../utils/import/app_import.dart';

class ApiController extends ChangeNotifier {
  bool loading = false;

  /// [changeLoading] change value loading
  set changeLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  void initRequest(BuildContext context) {
    fetchDataPokemon(context);
  }

  // ******************** Pokemon *********************
  ModelPokemonApp? pokemonData;
  Future<void> fetchDataPokemon(BuildContext context) async {
    loading = true;
    pokemonData = await ApiEndPoint().getPokemon();
    loading = false;
    notifyListeners();
  }
}
