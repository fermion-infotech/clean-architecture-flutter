import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/status_response.dart';
import '../model/main/chats_response.dart';

part 'whatsapp_api_service.g.dart';

@RestApi()
abstract class WhatsAppApiService {
  factory WhatsAppApiService(Dio dio) = _WhatsAppApiService;

  @GET("/chatlist")
  Future<HttpResponse<ChatsResponse>> getChats();
  
  @GET("/statuslist")
  Future<HttpResponse<StatusResponse>> getStatus();
}
