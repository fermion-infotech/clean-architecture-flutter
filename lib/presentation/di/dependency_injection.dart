import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:whatsapp_flutter_clean_arch/data/api/whatsapp_api_service.dart';
import 'package:whatsapp_flutter_clean_arch/data/repository/datasource/whatsapp_remote_data_sources.dart';
import 'package:whatsapp_flutter_clean_arch/data/repository/datasourceimpl/whatsapp_remote_data_source_impl.dart';
import 'package:whatsapp_flutter_clean_arch/data/repository/main_repository_impl.dart';
import 'package:whatsapp_flutter_clean_arch/data/utils/constants.dart';
import 'package:whatsapp_flutter_clean_arch/domain/repository/main/main_repository.dart';
import 'package:whatsapp_flutter_clean_arch/domain/usecase/main/get_chats_usecase.dart';
import 'package:whatsapp_flutter_clean_arch/domain/usecase/main/get_status_usecase.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/viewmodel/main/main_view_model.dart';

import '../../data/utils/dio_factory.dart';
import '../viewmodel/main/main_2_view_model.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpDependencies() async {
  getIt.registerSingleton<Dio>(DioFactory(baseUrl).create());
  getIt.registerSingleton<WhatsAppApiService>(WhatsAppApiService(getIt()));
  getIt.registerSingleton<MainViewModel>(MainViewModel());
  getIt.registerSingleton<Main2ViewModel>(Main2ViewModel());
  getIt.registerSingleton<GetChatsUseCase>(GetChatsUseCase());
  getIt.registerSingleton<GetStatusUseCase>(GetStatusUseCase());
  getIt.registerSingleton<MainRepository>(MainRepositoryImpl());
  getIt.registerSingleton<WhatsAppRemoteDataSource>(WhatsAppRemoteDataSourceImpl());
}
