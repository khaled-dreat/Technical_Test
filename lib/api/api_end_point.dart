part of '../utils/import/app_import.dart';

class ApiEndPoint extends ApiHandel {
  int timeout = 100;

  @override
  Future<ModelPokemonApp?> getPokemon() async {
    try {
      Uri uri = Uri(host: ApiKey.host, scheme: ApiKey.https, path: ApiKey.path);
      http.Response res =
          await http.get(uri).timeout(Duration(seconds: timeout));
      if (res.statusCode == 200) {
        Map<String, dynamic> data = convert.jsonDecode(res.body);
        // ✅
        return ModelPokemonApp.fromJson(data);
      } else {
        // ❌
        AppToast.toast("حدث خطأ أثناء جلب بيانات");
        return null;
      }
    } catch (error) {
      dev.log('error Fetch Data Pokemon',
          name: 'Api Pokemon', error: error.toString());
      return null;
    }
  }
}
