import 'package:retrofit/retrofit.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/status_response.dart';

import '../../model/main/chats_response.dart';

abstract class WhatsAppRemoteDataSource {
  Future<HttpResponse<ChatsResponse>> getChats();
  Future<HttpResponse<StatusResponse>> getStatus();
}