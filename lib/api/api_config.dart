import 'package:flutter_dotenv/flutter_dotenv.dart';

class ApiConfig {

  static String get apiKey => dotenv.env['API_KEY']!;

  static String get baseUrl => dotenv.env['BASE_URL']!;

  static String get imageBaseUrl => dotenv.env['IMAGE_BASE_URL']!;
}