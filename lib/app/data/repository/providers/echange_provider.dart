import 'package:get/get.dart';

import '../echange_model.dart';

class EchangeProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Echange.fromJson(map);
      if (map is List)
        return map.map((item) => Echange.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Echange?> getEchange(int id) async {
    final response = await get('echange/$id');
    return response.body;
  }

  Future<Response<Echange>> postEchange(Echange echange) async =>
      await post('echange', echange);
  Future<Response> deleteEchange(int id) async => await delete('echange/$id');
}
