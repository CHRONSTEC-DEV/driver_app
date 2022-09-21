import 'package:get/get.dart';

import '../commandes_model.dart';

class CommandesProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Commandes.fromJson(map);
      if (map is List)
        return map.map((item) => Commandes.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Commandes?> getCommandes(int id) async {
    final response = await get('commandes/$id');
    return response.body;
  }

  Future<Response<Commandes>> postCommandes(Commandes commandes) async =>
      await post('commandes', commandes);
  Future<Response> deleteCommandes(int id) async =>
      await delete('commandes/$id');
}
