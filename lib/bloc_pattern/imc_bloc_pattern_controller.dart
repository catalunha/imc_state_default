import 'dart:async';

import 'package:imc_state_default/bloc_pattern/imc_state.dart';

class ImcBlocPatternController {
  final _imcStreamController = StreamController<ImcState>.broadcast()
    ..add(ImcState(imc: 0.0));

  Stream<ImcState> get imcOut => _imcStreamController.stream;
  //Sem sink
  Future<void> calcularImc({
    required double peso,
    required double altura,
  }) async {
    _imcStreamController.add(ImcStateLoading());
    await Future.delayed(const Duration(seconds: 2));
    double imc = peso / (altura * altura);
    _imcStreamController.add(ImcState(imc: imc));
  }

  // //com sink
  // Sink<ImcState> get imcIn => _imcStreamController.sink;
  // Future<void> _calcularImcWithSink({
  //   required double peso,
  //   required double altura,
  // }) async {
  //   imcIn.add(ImcState(0));
  //   await Future.delayed(const Duration(seconds: 1));
  //   double imc = peso / (altura * altura);
  //   imcIn.add(ImcState(imc));
  // }

  void dispose() {
    _imcStreamController.close();
  }
}
