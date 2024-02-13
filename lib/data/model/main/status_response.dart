import 'package:json_annotation/json_annotation.dart';

@JsonSerializable()
class StatusResponse {
  StatusResponse({
      String? status, 
      String? message, 
      List<Statuses>? statuses,}){
    _status = status;
    _message = message;
    _statuses = statuses;
}

  StatusResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['statuses'] != null) {
      _statuses = [];
      json['statuses'].forEach((v) {
        _statuses?.add(Statuses.fromJson(v));
      });
    }
  }
  String? _status;
  String? _message;
  List<Statuses>? _statuses;
StatusResponse copyWith({  String? status,
  String? message,
  List<Statuses>? statuses,
}) => StatusResponse(  status: status ?? _status,
  message: message ?? _message,
  statuses: statuses ?? _statuses,
);
  String? get status => _status;
  String? get message => _message;
  List<Statuses>? get statuses => _statuses;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_statuses != null) {
      map['statuses'] = _statuses?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Statuses {
  Statuses({
      String? name, 
      String? image, 
      bool? storyViewed,}){
    _name = name;
    _image = image;
    _storyViewed = storyViewed;
}

  Statuses.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _storyViewed = json['story_viewed'];
  }
  String? _name;
  String? _image;
  bool? _storyViewed;
Statuses copyWith({  String? name,
  String? image,
  bool? storyViewed,
}) => Statuses(  name: name ?? _name,
  image: image ?? _image,
  storyViewed: storyViewed ?? _storyViewed,
);
  String? get name => _name;
  String? get image => _image;
  bool? get storyViewed => _storyViewed;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['story_viewed'] = _storyViewed;
    return map;
  }

}