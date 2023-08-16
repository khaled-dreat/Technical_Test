part of '../../utils/import/app_import.dart';

class PagePokemon extends StatelessWidget {
  static const String nameRoute = "PagePokemon";
  const PagePokemon({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(title: "Pokemon"),
      body: TabPokemon(),
    );
  }
}
