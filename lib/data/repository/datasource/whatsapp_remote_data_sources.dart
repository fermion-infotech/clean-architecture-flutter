import 'package:retrofit/retrofit.dart';

import '../../model/main/chats_response.dart';

abstract class WhatsAppRemoteDataSource {
  Future<HttpResponse<ChatsResponse>> getChats();
}