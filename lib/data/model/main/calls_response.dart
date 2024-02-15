/// status : "ok"
/// message : "Data fetched successfully"
/// calls : [{"name":"We are Fermion","image":"https://placehold.co/400","call_type":0},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":2},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":2},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":0},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":1},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":1},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":0},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":0},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":2},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":2},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":0},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":0},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":1},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":2},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":2},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":1},{"name":"We are Fermion","image":"https://placehold.co/400","call_type":2}]

class CallsResponse {
  CallsResponse({
      String? status, 
      String? message, 
      List<Calls>? calls,}){
    _status = status;
    _message = message;
    _calls = calls;
}

  CallsResponse.fromJson(dynamic json) {
    _status = json['status'];
    _message = json['message'];
    if (json['calls'] != null) {
      _calls = [];
      json['calls'].forEach((v) {
        _calls?.add(Calls.fromJson(v));
      });
    }
  }
  String? _status;
  String? _message;
  List<Calls>? _calls;
CallsResponse copyWith({  String? status,
  String? message,
  List<Calls>? calls,
}) => CallsResponse(  status: status ?? _status,
  message: message ?? _message,
  calls: calls ?? _calls,
);
  String? get status => _status;
  String? get message => _message;
  List<Calls>? get calls => _calls;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = _status;
    map['message'] = _message;
    if (_calls != null) {
      map['calls'] = _calls?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// name : "We are Fermion"
/// image : "https://placehold.co/400"
/// call_type : 0

class Calls {
  Calls({
      String? name, 
      String? image, 
      num? callType,}){
    _name = name;
    _image = image;
    _callType = callType;
}

  Calls.fromJson(dynamic json) {
    _name = json['name'];
    _image = json['image'];
    _callType = json['call_type'];
  }
  String? _name;
  String? _image;
  num? _callType;
Calls copyWith({  String? name,
  String? image,
  num? callType,
}) => Calls(  name: name ?? _name,
  image: image ?? _image,
  callType: callType ?? _callType,
);
  String? get name => _name;
  String? get image => _image;
  num? get callType => _callType;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['name'] = _name;
    map['image'] = _image;
    map['call_type'] = _callType;
    return map;
  }

}