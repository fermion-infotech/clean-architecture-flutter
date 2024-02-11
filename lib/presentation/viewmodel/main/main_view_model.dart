import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:whatsapp_flutter_clean_arch/domain/usecase/main/get_chats_usecase.dart';
import 'package:whatsapp_flutter_clean_arch/presentation/di/dependency_injection.dart';

import '../../../data/model/main/chats_response.dart';

class MainViewModel with ChangeNotifier {
  List<Chats>? _chats = [];

  List<Chats>? get chats => _chats;

  getChats() async {
    final httpResponse = await getIt<GetChatsUseCase>().execute();
    if (httpResponse.response.statusCode == HttpStatus.ok ||
        httpResponse.response.statusCode == HttpStatus.created) {
      ChatsResponse chatsResponse = httpResponse.data;
      if (chatsResponse.status == "ok") {
        _chats = chatsResponse.chats;
      } else {
        _chats = [];
      }
      notifyListeners();
    }
  }

}
