import 'package:dartz/dartz.dart';
import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/search/model/search_responce/search_responce.dart';

abstract class SearchServies {
  Future<Either<MainFailture, SearchResponce>> searchMovies({
    required String movieQuery,
  });
}
