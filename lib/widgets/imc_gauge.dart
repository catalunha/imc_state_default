import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'package:imc_state_default/widgets/imc_gauge_range.dart';

class ImcGauge extends StatelessWidget {
  final double imc;
  const ImcGauge({
    Key? key,
    required this.imc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          showLabels: false,
          showAxisLine: false,
          showTicks: false,
          minimum: 12.5,
          maximum: 47.9,
          ranges: [
            ImcGaugeRange(
              color: Colors.blue,
              label: 'Magro',
              startValue: 12.5,
              endValue: 18.5,
            ),
            ImcGaugeRange(
              color: Colors.green,
              label: 'Normal',
              startValue: 18.5,
              endValue: 24.5,
            ),
            ImcGaugeRange(
              color: Colors.blue,
              label: 'Sobrepeso',
              startValue: 24.5,
              endValue: 29.9,
            ),
            ImcGaugeRange(
              color: Colors.orange,
              label: 'Obeso',
              startValue: 29.9,
              endValue: 39.9,
            ),
            ImcGaugeRange(
              color: Colors.red,
              label: 'Obeso grave',
              startValue: 39.9,
              endValue: 47.9,
            )
          ],
          pointers: [
            NeedlePointer(
              value: imc,
              enableAnimation: true,
            )
          ],
        ),
      ],
    );
  }
}
