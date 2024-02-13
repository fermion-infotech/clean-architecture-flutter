import 'package:retrofit/retrofit.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/chats_response.dart';
import 'package:whatsapp_flutter_clean_arch/data/repository/datasource/whatsapp_remote_data_sources.dart';
import 'package:whatsapp_flutter_clean_arch/domain/repository/main/main_repository.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/di/dependency_injection.dart';

import '../model/main/status_response.dart';

class MainRepositoryImpl implements MainRepository{

  @override
  Future<HttpResponse<ChatsResponse>> getChats() {
    return getIt<WhatsAppRemoteDataSource>().getChats();
  }

  @override
  Future<HttpResponse<StatusResponse>> getStatus() {
    return getIt<WhatsAppRemoteDataSource>().getStatus();
  }

}