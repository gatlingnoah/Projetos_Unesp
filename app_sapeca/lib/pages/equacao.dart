import 'dart:math';

class Equacao {
  late String variedade;
  late String operacoes;
  late String perdas;
  late String solo;
  late String dados;
  late double resultado = 0;

  calculing(String variedade, String operacoes, String solo, String perdas,
      String dados) {
    // return "Perdas por hectare: $resultado";
    // return "$variedade - $operacoes - $solo - $perdas - $dados";

    // Digging / Harvester
    if (operacoes == 'Recolhimento') {
      if (perdas == 'Visível') {
        if (variedade == 'Runner IAC 886') {
          //Losses = 19,9120*Number of pods^0,8343
          resultado = 19.9120 * pow(double.parse(dados), 0.8343);
        }
        if (variedade == 'Granoleico') {
          //Losses = 13,2790*Number of pods^0,6852
          resultado = 13.2790 * pow(double.parse(dados), 0.6852);
        }
        if (variedade == 'Georgia 06-G') {
          //Losses = 16,431*Number of pods^0,7756
          resultado = 16.431 * pow(double.parse(dados), 0.7756);
        }
      }
    }

    // Digging
    if (operacoes == 'Arranquio') {
      if (perdas == 'Invisível') {
        if (variedade == 'Runner IAC 886') {
          //Losses = 8,1460*Number of pods^1,0506
          resultado = 8.1460 * pow(double.parse(dados), 1.0506);
        }
        if (variedade == 'Granoleico') {
          //Losses = 6,6702*Number of pods^0,9021
          resultado = 6.6702 * pow(double.parse(dados), 0.9021);
        }
        if (variedade == 'Georgia 06-G') {
          //Losses = 13,834*Number of pods^0,7929
          resultado = 13.834 * pow(double.parse(dados), 0.7929);
        }
      }
    }
  }
}
