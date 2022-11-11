
class Post {
  Post({
    required this.status,
    required this.message,
    required this.data,
  });
  late final String status;
  late final String message;
  late final List<Data> data;

  Post.fromJson(Map<String, dynamic> json){
    status = json['status'];
    message = json['message'];
    data = List.from(json['data']).map((e)=>Data.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    _data['message'] = message;
    _data['data'] = data.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Data {
  Data({
    required this.id,
    required this.name,
    required this.location,
    required this.description,
    required this.startDate,
    required this.startTime,
    required this.endDate,
    required this.endTime,
    required this.posterId,
    required this.cover,
    required this.createdBy,
    required this.createdById,
    required this.attedDetails,
  });
  late final String id;
  late final String name;
  late final String location;
  late final String description;
  late final String startDate;
  late final String startTime;
  late final String endDate;
  late final String endTime;
  late final String posterId;
  late final String cover;
  late final String createdBy;
  late final String createdById;
  late final List<AttedDetails> attedDetails;

  Data.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    location = json['location'];
    description = json['description'];
    startDate = json['start_date'];
    startTime = json['start_time'];
    endDate = json['end_date'];
    endTime = json['end_time'];
    posterId = json['poster_id'];
    cover = json['cover'];
    createdBy = json['created_by'];
    createdById = json['created_by_id'];
    attedDetails = List.from(json['atted_details']).map((e)=>AttedDetails.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['location'] = location;
    _data['description'] = description;
    _data['start_date'] = startDate;
    _data['start_time'] = startTime;
    _data['end_date'] = endDate;
    _data['end_time'] = endTime;
    _data['poster_id'] = posterId;
    _data['cover'] = cover;
    _data['created_by'] = createdBy;
    _data['created_by_id'] = createdById;
    _data['atted_details'] = attedDetails.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class AttedDetails {
  AttedDetails({
    required this.id,
    required this.userId,
    required this.qrCode,
    required this.qrDetails,
    required this.eventId,
    required this.userName,
    required this.eventStartDate,
    required this.eventEndDate,
    required this.startTime,
    required this.endTime,
    required this.location,
    required this.image,
    required this.createOn,
    required this.status,
    required this.isAttend,
  });
  late final String id;
  late final String userId;
  late final String qrCode;
  late final String qrDetails;
  late final String eventId;
  late final String userName;
  late final String eventStartDate;
  late final String eventEndDate;
  late final String startTime;
  late final String endTime;
  late final String location;
  late final String image;
  late final String createOn;
  late final String status;
  late final String isAttend;

  AttedDetails.fromJson(Map<String, dynamic> json){
    id = json['id'];
    userId = json['user_id'];
    qrCode = json['qr_code'];
    qrDetails = json['qr_details'];
    eventId = json['event_id'];
    userName = json['user_name'];
    eventStartDate = json['event_start_date'];
    eventEndDate = json['event_end_date'];
    startTime = json['start_time'];
    endTime = json['end_time'];
    location = json['location'];
    image = json['image'];
    createOn = json['create_on'];
    status = json['status'];
    isAttend = json['is_attend'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['user_id'] = userId;
    _data['qr_code'] = qrCode;
    _data['qr_details'] = qrDetails;
    _data['event_id'] = eventId;
    _data['user_name'] = userName;
    _data['event_start_date'] = eventStartDate;
    _data['event_end_date'] = eventEndDate;
    _data['start_time'] = startTime;
    _data['end_time'] = endTime;
    _data['location'] = location;
    _data['image'] = image;
    _data['create_on'] = createOn;
    _data['status'] = status;
    _data['is_attend'] = isAttend;
    return _data;
  }
}