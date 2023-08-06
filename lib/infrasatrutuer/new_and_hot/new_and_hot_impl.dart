import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netfilx_app_1/domain/core/api_end_points.dart';
import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/new_and_hot/model/new_and_hot.dart';
import 'package:netfilx_app_1/domain/new_and_hot/new_and_hot_service.dart';




@LazySingleton(as: NewAndHotService)
class NewAndHotImplimantion implements NewAndHotService{
  @override
  Future<Either<MainFailture, NewAndHot>> getNewAndHotMovieData()async {
     try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoint.NewAndHotMovieUrl,);

      //log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewAndHot.fromJson(response.data);
        return Right(result);
      } else { 
        return const Left(MainFailture.serverFailture());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailture.ClientFalituer());
    }
  }














  @override
  Future<Either<MainFailture, NewAndHot>> getNewAndHotTVData()async {
    try {
      final response = await Dio(BaseOptions())
          .get(ApiEndPoint.NewAndHotTvUrl, );

      //log(response.data.toString());
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = NewAndHot.fromJson(response.data);
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