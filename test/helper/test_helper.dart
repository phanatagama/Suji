import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:mockito/annotations.dart';
import 'package:suji/app/data/datasources/database_helper.dart';
import 'package:suji/app/data/datasources/shalat_local_data_source.dart';
import 'package:suji/app/data/datasources/shalat_remote_data_source.dart';
import 'package:suji/app/data/datasources/surah_local_data_source.dart';
import 'package:suji/app/data/datasources/surah_remote_data_source.dart';
import 'package:suji/app/domain/repository/shalat_repository.dart';
import 'package:suji/app/domain/repository/surah_repository.dart';
import 'package:suji/app/domain/usescases/get_asmaul_husna_usecase.dart';

@GenerateMocks([
  // Data
  ShalatRepository,
  SurahRepository,
  ShalatLocalDataSource,
  ShalatRemoteDataSource,
  SurahLocalDataSource,
  SurahRemoteDataSource,
  Connectivity,
  DatabaseHelper,

  // Domain
  GetAsmaulHusnaUsecase
])
void main() {}