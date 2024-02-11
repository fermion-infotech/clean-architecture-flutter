
import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class ChatsResponse {
  ChatsResponse({
    String? status,
    String? message,
    List<Chats>? chats,
  }) {
    _status = status;
    _message = message;
    _chats = chats;
  }

  ChatsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['chats'] != null) {
      _chats = [];
      json['chats'].forEach((v) {
        _chats?.add(Chats.fromJson(v));
      });
    }
  }

  String? _status;
  String? _message;
  List<Chats>? _chats;

  ChatsResponse copyWith({
    String? status,
    String? message,
    List<Chats>? chats,
  }) =>
      ChatsResponse(
        status: status ?? _status,
        message: message ?? _message,
        chats: chats ?? _chats,
      );

  String? get status => _status;

  String? get message => _message;

  List<Chats>? get chats => _chats;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_chats != null) {
      map['chats'] = _chats?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

class Chats {
  Chats({
    String? name,
    String? image,
    String? recentMessage,
    String? recentMessageFrom,
    num? unreadMessage,
  }) {
    _name = name;
    _image = image;
    _recentMessage = recentMessage;
    _recentMessageFrom = recentMessageFrom;
    _unreadMessage = unreadMessage;
  }

  Chats.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _recentMessage = json['recent_message'];
    _recentMessageFrom = json['recent_message_from'];
    _unreadMessage = json['unread_message'];
  }

  String? _name;
  String? _image;
  String? _recentMessage;
  String? _recentMessageFrom;
  num? _unreadMessage;

  Chats copyWith({
    String? name,
    String? image,
    String? recentMessage,
    String? recentMessageFrom,
    num? unreadMessage,
  }) =>
      Chats(
        name: name ?? _name,
        image: image ?? _image,
        recentMessage: recentMessage ?? _recentMessage,
        recentMessageFrom: recentMessageFrom ?? _recentMessageFrom,
        unreadMessage: unreadMessage ?? _unreadMessage,
      );

  String? get name => _name;

  String? get image => _image;

  String? get recentMessage => _recentMessage;

  String? get recentMessageFrom => _recentMessageFrom;

  num? get unreadMessage => _unreadMessage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['recent_message'] = _recentMessage;
    map['recent_message_from'] = _recentMessageFrom;
    map['unread_message'] = _unreadMessage;
    return map;
  }
}
