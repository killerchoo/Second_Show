import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:netfilx_app_1/domain/core/api_end_points.dart';
import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/downloads/i_download_repo.dart';
import 'package:netfilx_app_1/domain/downloads/models/downloads.dart';

@LazySingleton(as: IDownloadRepo)
class DownloadsRepository implements IDownloadRepo {
  @override
  Future<Either<MainFailture, List<Downloads>>> getDownloadsimage() async {
    try {
      final Response response =
          await Dio(BaseOptions()).get(ApiEndPoint.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadslist = (response.data['results'] as List).map((e) {
          return Downloads.fromJson(e);
        }).toList();

        print(downloadslist);
        return Right(downloadslist);
      } else {
        return const Left(MainFailture.serverFailture());
      }
    } catch (e) {
      log(e.toString());
      return const Left(MainFailture.ClientFalituer());
    }
  }
}
