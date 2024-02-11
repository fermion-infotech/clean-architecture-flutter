import 'package:whatsapp_flutter_clean_arch/data/api/whatsapp_api_service.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/chats_response.dart';
import 'package:whatsapp_flutter_clean_arch/data/repository/datasource/whatsapp_remote_data_sources.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/di/dependency_injection.dart';
import 'package:retrofit/retrofit.dart';

class WhatsAppRemoteDataSourceImpl implements WhatsAppRemoteDataSource{

  @override
  Future <HttpResponse<ChatsResponse>> getChats() {
    return getIt<WhatsAppApiService>().getChats();
  }

}