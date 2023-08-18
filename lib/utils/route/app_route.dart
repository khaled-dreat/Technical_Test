part of '../import/app_import.dart';

class AppRoute {
  // * Pages  App
  static Map<String, WidgetBuilder> routes = {
    PageSplash.nameRoute: (context) => const PageSplash(),
    PageHome.nameRoute: (context) => const PageHome(),
    Page1.nameRoute: (context) => const Page1(),
    PagePokemon.nameRoute: (context) => const PagePokemon(),
  };

  // * inti Route
  static String? get initRoute => PageSplash.nameRoute;

  // * push Name
  static void go(BuildContext context, String nameRoute) =>
      Navigator.pushNamed(context, nameRoute);
  // * push Name Replace
  static void goReplace(BuildContext context, String nameRoute) =>
      Navigator.pushReplacementNamed(context, nameRoute);

  // * push Name
  static void goMaterial(BuildContext context, Widget page) {
    MaterialPageRoute<Widget> route =
        MaterialPageRoute(builder: (context) => page);
    Navigator.push(context, route);
  }
}
