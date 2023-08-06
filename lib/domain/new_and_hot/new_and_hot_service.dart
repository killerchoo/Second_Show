import 'package:dartz/dartz.dart';
import 'package:netfilx_app_1/domain/core/failture/main_failture.dart';
import 'package:netfilx_app_1/domain/new_and_hot/model/new_and_hot.dart';

abstract class NewAndHotService {
  Future<Either<MainFailture, NewAndHot>> getNewAndHotMovieData();
  Future<Either<MainFailture, NewAndHot>> getNewAndHotTVData();

}
