library hop_runner;

import 'dart:async';
import 'dart:io';
import 'package:hop/hop.dart';
import 'package:hop/hop_tasks.dart';

void main() {

  List pathList = [
    'lib/prediction_v1_3_api_browser.dart',
    'lib/prediction_v1_3_api_console.dart',
    'lib/prediction_v1_3_api_client.dart'
  ];

  addTask('docs', createDartDocTask(pathList, linkApi: true));

  addTask('analyze', createAnalyzerTask(pathList));

  runHop();

}