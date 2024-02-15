import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/calls_response.dart';
import 'package:whatsapp_flutter_clean_arch/data/model/main/status_response.dart';
import '../model/main/chats_response.dart';

part 'whatsapp_api_service.g.dart';

/// This service class is being made using Retrofit
/// List retrofit plugin in pubspec.yaml
/// Make below class with @RestApi() annotation
/// Create get methods
/// Now create another empty class with same name but ending with '.g.dart'
/// Now go to terminal and run 'dart run build_runner build' command
/// Now it will generate the respective support mechanism to make api call
@RestApi()
abstract class WhatsAppApiService {
  factory WhatsAppApiService(Dio dio) = _WhatsAppApiService;

  @GET("/chatlist")
  Future<HttpResponse<ChatsResponse>> getChats();

  @GET("/statuslist")
  Future<HttpResponse<StatusResponse>> getStatus();

  @GET("/calllist")
  Future<HttpResponse<CallsResponse>> getCalls();
}
