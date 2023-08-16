part of '../../utils/import/app_import.dart';

class PageSplash extends StatefulWidget {
  const PageSplash({super.key});
  static String nameRoute = "PageSplash";

  @override
  State<PageSplash> createState() => _PageSplashState();
}

class _PageSplashState extends State<PageSplash> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3),
        () => AppRoute.goReplace(context, PageHome.nameRoute));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: FlutterLogo(
        size: AppDime.xxxi,
      )),
    );
  }
}
