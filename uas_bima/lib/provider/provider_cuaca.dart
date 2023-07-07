import 'package:uas_bima/model/model_cuaca.dart';
import 'package:uas_bima/service/service_cuaca.dart';
import 'package:flutter/cupertino.dart';

class ProviderCuaca extends ChangeNotifier {
  TextEditingController cityNameText = TextEditingController();

  ServiceCuaca serviceCuaca = ServiceCuaca();
  ModelCuaca?
      modelCuaca; // Tambahkan tanda "?" setelah ModelCuaca untuk mengizinkan nilai null

  showWeatherData() async {
    modelCuaca = await serviceCuaca.getCurrentWeather(cityNameText.text);
    print(modelCuaca?.weather?.first.main);
    notifyListeners();
  }
}