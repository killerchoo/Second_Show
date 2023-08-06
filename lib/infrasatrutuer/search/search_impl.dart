import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netfilx_app_1/domain/core/api_end_points.dart';
import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/search/model/search_responce/search_responce.dart';
import 'package:netfilx_app_1/domain/search/search_servies.dart';

@LazySingleton(as: SearchServies)
class SearchImpl implements SearchServies {
  @override
  Future<Either<MainFailture, SearchResponce>> searchMovies(
      {required String movieQuery}) async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoint.search, queryParameters: {'query': movieQuery});

      //log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResponce.fromJson(response.data);
        return Right(result);
      } else {
        return const Left(MainFailture.serverFailture());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailture.ClientFalituer());
    }
  }
}
