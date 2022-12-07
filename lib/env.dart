import 'package:flutter_dotenv/flutter_dotenv.dart';

class Env {
  static late String baseUrl;
  static late String sentryUrl;
 

  static Future<void> init({String fileName = '.env'}) async {
    
    await dotenv.load(fileName: fileName);

    baseUrl = dotenv.env['BASE_URL']!;
    sentryUrl = dotenv.env['SENTRY_URL']!;
  }
}
