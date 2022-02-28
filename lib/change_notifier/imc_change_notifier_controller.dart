import 'package:flutter/cupertino.dart';

class ImcChangeNotifierController extends ChangeNotifier {
  var imc = 0.0;
  Future<void> calcularImc({
    required double peso,
    required double altura,
  }) async {
    imc = 0;
    notifyListeners();
    await Future.delayed(const Duration(seconds: 1));
    imc = peso / (altura * altura);
    notifyListeners();
  }
}
