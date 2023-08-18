import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:technical_test/utils/import/app_import.dart';

void main() {
  runApp(MultiProvider(
    providers: providers,
    child: const AppTechicalTest(),
  ));
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (context) => ApiController(),
  ),
  ChangeNotifierProvider(
    create: (context) => InfoController(),
  )
];
