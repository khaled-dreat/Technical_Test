import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
//  ************************ AS & SHOW **************************
import 'dart:developer' as dev;
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';

// ? ************************ App Store **************************
part '../../app_start/app_technical_test.dart';

// ************************ Utils **************************
part '../route/app_route.dart';
part '../dime/app_dime.dart';
// ! ************************ View **************************
part '../../view/splash/body.dart';
part '../../view/home/body.dart';
part '../../view/page1/body.dart';
part '../../view/pokemon/body.dart';
part '../../view/pokemon/tab_pokemon.dart';
part '../../view/pokemon/pokemon_gridl_builder.dart';
part '../../view/pokemon/pokemon_card.dart';

// ? ************************ Widgets ****************
part '../../view/home/widgets/home_button/home_button.dart';
part '../../view/widgets/appbar/appbar.dart';
part '../../view/widgets/tost/app_tost.dart';
part "../../view/widgets/error_text/error_text.dart";
part '../../view/pokemon/widgets/skelton.dart';
part '../../view/pokemon/widgets/skelton_view.dart';
// ! ************************ Api **************************
part "../../api/api_end_point.dart";
part "../../api/api_key.dart";
part "../../api/api_handel.dart";

// ************************ Model **************************
part '../../model/pokemons/m_pokemons.dart';
part '../../model/pokemons/m_pokemon_app.dart';
// ? ************************ Controller ******************
part '../../controller/c_api.dart';
part '../../controller/c_info.dart';
