import 'package:dartz/dartz.dart';
import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/downloads/models/downloads.dart';

abstract class IDownloadRepo {
  Future<Either<MainFailture, List<Downloads>>> getDownloadsimage();
}
