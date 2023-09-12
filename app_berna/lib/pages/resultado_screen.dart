// ignore_for_file: camel_case_types, depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Classe Resultado'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navega para a segunda tela
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ResultadoScreen()),
            );
          },
          child: const Text('Voltar'),
        ),
      ),
    );
  }
}

class ResultadoScreen extends StatelessWidget {
  const ResultadoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scrollbar(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const Padding(padding: EdgeInsets.all(8.0)),

              // Espaço
              // const SizedBox(height: 20),

              Flexible(child: _grafico()),

              // Voltar para a primeira tela
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Voltar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _grafico extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  _grafico({Key? key}) : super(key: key);

  @override
  _graficoState createState() => _graficoState();
}

class _graficoState extends State<_grafico> {
  late List<_ChartData> data;
  late TooltipBehavior _tooltip;

  @override
  void initState() {
    data = [
      _ChartData('Maquinários', 12),
      _ChartData('Fertilizantes', 15),
      _ChartData('Irrigaçao', 30)
    ];
    _tooltip = TooltipBehavior(enable: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados'),
      ),
      body: Scrollbar(
        child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          primaryYAxis: NumericAxis(minimum: 0, maximum: 40, interval: 10),
          tooltipBehavior: _tooltip,
          series: <ChartSeries<_ChartData, String>>[
            ColumnSeries<_ChartData, String>(
                dataSource: data,
                xValueMapper: (_ChartData data, _) => data.x,
                yValueMapper: (_ChartData data, _) => data.y,
                name: 'Informação',
                color: const Color.fromRGBO(45, 118, 179, 1))
          ],
        ),
      ),
    );
  }
}

class _ChartData {
  _ChartData(this.x, this.y);
  final String x;
  final double y;
}
