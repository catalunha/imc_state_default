import 'package:flutter/material.dart';
import 'package:imc_state_default/change_notifier/imc_change_notifier_page.dart';
import 'package:imc_state_default/bloc_pattern/imc_bloc_pattern_page.dart';
import 'package:imc_state_default/setState/imc_setstate_page.dart';
import 'package:imc_state_default/value_notifier/imc_value_notifier_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  void _goToPage(BuildContext context, Widget page) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return page;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomePage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('SetState'),
              onPressed: () {
                _goToPage(context, const ImcSetstatePage());
              },
            ),
            ElevatedButton(
              child: const Text('ValueNotifier'),
              onPressed: () {
                _goToPage(context, const ImcValueNotifierPage());
              },
            ),
            ElevatedButton(
              child: const Text('ChangeNotifier'),
              onPressed: () {
                _goToPage(context, const ImcChangeNotifierPage());
              },
            ),
            ElevatedButton(
              child: const Text('Bloc Pattern (Streams)'),
              onPressed: () {
                _goToPage(context, const ImcBlocPatternPage());
              },
            ),
          ],
        ),
      ),
    );
  }
}
