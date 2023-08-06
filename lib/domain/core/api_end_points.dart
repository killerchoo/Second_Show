import 'package:netfilx_app_1/core/string.dart';
import 'package:netfilx_app_1/infrasatrutuer/api_key.dart';

class ApiEndPoint {
  static const downloads = "$kBaseUrl/movie/popular?api_key=$ApiKey";
  static const search = '$kBaseUrl/search/movie?api_key=$ApiKey';

  static const NewAndHotMovieUrl = '$kBaseUrl/discover/movie?api_key=$ApiKey';
  static const NewAndHotTvUrl = '$kBaseUrl/discover/tv?api_key=$ApiKey';
}
