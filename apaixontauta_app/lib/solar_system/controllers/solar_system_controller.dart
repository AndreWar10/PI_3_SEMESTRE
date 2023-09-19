

import 'package:apaixontauta_app/solar_system/models/solar_system_model.dart';
import 'package:apaixontauta_app/solar_system/repository/solar_system_repository.dart';

class SolarSystemController {
  SolarSystemController();

  List<SolarSystemModel> planetsList = [];

  Future<List<SolarSystemModel>?> fetchSolarSystemData() async {
    final response = await SolarSystemRepository().fetchPlanetsSolarSystem();

    if (response != null) {
      for (final planet in response) {
        planetsList.add(SolarSystemModel.fromJson(planet as Map<String, dynamic>));
      }
      return planetsList;
    } else {
      return null;
    }
  }
}