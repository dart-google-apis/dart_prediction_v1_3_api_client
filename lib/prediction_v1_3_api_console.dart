library prediction_v1_3_api.console;

import "package:google_oauth2_client/google_oauth2_console.dart" as oauth2;

import 'package:google_prediction_v1_3_api/src/cloud_api_console.dart';

import "package:google_prediction_v1_3_api/prediction_v1_3_api_client.dart";

/** Lets you access a cloud hosted machine learning service that makes it easy to build smart apps */
class Prediction extends Client with ConsoleClient {

  /** OAuth Scope2: Manage your data and permissions in Google Cloud Storage */
  static const String DEVSTORAGE_FULL_CONTROL_SCOPE = "https://www.googleapis.com/auth/devstorage.full_control";

  /** OAuth Scope2: View your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_ONLY_SCOPE = "https://www.googleapis.com/auth/devstorage.read_only";

  /** OAuth Scope2: Manage your data in Google Cloud Storage */
  static const String DEVSTORAGE_READ_WRITE_SCOPE = "https://www.googleapis.com/auth/devstorage.read_write";

  /** OAuth Scope2: Manage your data in the Google Prediction API */
  static const String PREDICTION_SCOPE = "https://www.googleapis.com/auth/prediction";

  final oauth2.OAuth2Console auth;

  Prediction([oauth2.OAuth2Console this.auth]);
}
