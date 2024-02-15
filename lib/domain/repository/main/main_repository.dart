import 'package:retrofit/retrofit.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/calls_response.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/status_response.dart';

import '../../../data/model/main/chats_response.dart';

abstract class MainRepository {
  Future<HttpResponse<ChatsResponse>> getChats();

  Future<HttpResponse<StatusResponse>> getStatus();

  Future<HttpResponse<CallsResponse>> getCalls();
}
