import 'package:retrofit/retrofit.dart';

import '../../../data/model/main/chats_response.dart';

abstract class MainRepository{
  Future<HttpResponse<ChatsResponse>> getChats();
}