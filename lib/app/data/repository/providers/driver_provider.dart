import 'package:get/get.dart';

import '../driver_model.dart';

class DriverProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.defaultDecoder = (map) {
      if (map is Map<String, dynamic>) return Driver.fromJson(map);
      if (map is List) return map.map((item) => Driver.fromJson(item)).toList();
    };
    httpClient.baseUrl = 'YOUR-API-URL';
  }

  Future<Driver?> getDriver(int id) async {
    final response = await get('driver/$id');
    return response.body;
  }

  Future<Response<Driver>> postDriver(Driver driver) async =>
      await post('driver', driver);
  Future<Response> deleteDriver(int id) async => await delete('driver/$id');
}
