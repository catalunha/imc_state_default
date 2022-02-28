import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcGaugeRange extends GaugeRange {
  ImcGaugeRange({
    Key? key,
    required Color color,
    required String label,
    required double startValue,
    required double endValue,
  }) : super(
          key: key,
          startValue: startValue,
          endValue: endValue,
          color: color,
          label: label,
          sizeUnit: GaugeSizeUnit.factor,
          labelStyle: const GaugeTextStyle(
            fontFamily: 'Times',
            fontSize: 12,
          ),
          startWidth: 0.65,
          endWidth: 0.65,
        );
}
