import 'package:flutter/material.dart';

import 'flavor_config.dart';
import 'src/app.dart';

void main() async {
  FlavorConfig(type: FlavorType.prod);
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const App());
}
