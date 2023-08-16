part of "../utils/import/app_import.dart";

class AppTechicalTest extends StatelessWidget {
  const AppTechicalTest({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) => MaterialApp(
        title: 'App Technical Test',
        debugShowCheckedModeBanner: false,
        // * Route
        initialRoute: AppRoute.initRoute,
        routes: AppRoute.routes,
      ),
    );
  }
}
