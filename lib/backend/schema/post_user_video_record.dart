import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostUserVideoRecord extends FirestoreRecord {
  PostUserVideoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "p_video_title" field.
  String? _pVideoTitle;
  String get pVideoTitle => _pVideoTitle ?? '';
  bool hasPVideoTitle() => _pVideoTitle != null;

  // "u_video_description" field.
  String? _uVideoDescription;
  String get uVideoDescription => _uVideoDescription ?? '';
  bool hasUVideoDescription() => _uVideoDescription != null;

  // "post_user" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "post_video" field.
  String? _postVideo;
  String get postVideo => _postVideo ?? '';
  bool hasPostVideo() => _postVideo != null;

  // "com_email" field.
  String? _comEmail;
  String get comEmail => _comEmail ?? '';
  bool hasComEmail() => _comEmail != null;

  // "post_user_pic" field.
  String? _postUserPic;
  String get postUserPic => _postUserPic ?? '';
  bool hasPostUserPic() => _postUserPic != null;

  void _initializeFields() {
    _pVideoTitle = snapshotData['p_video_title'] as String?;
    _uVideoDescription = snapshotData['u_video_description'] as String?;
    _postUser = snapshotData['post_user'] as DocumentReference?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _postVideo = snapshotData['post_video'] as String?;
    _comEmail = snapshotData['com_email'] as String?;
    _postUserPic = snapshotData['post_user_pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post_user_video');

  static Stream<PostUserVideoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostUserVideoRecord.fromSnapshot(s));

  static Future<PostUserVideoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostUserVideoRecord.fromSnapshot(s));

  static PostUserVideoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostUserVideoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostUserVideoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostUserVideoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostUserVideoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostUserVideoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostUserVideoRecordData({
  String? pVideoTitle,
  String? uVideoDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  String? postVideo,
  String? comEmail,
  String? postUserPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'p_video_title': pVideoTitle,
      'u_video_description': uVideoDescription,
      'post_user': postUser,
      'time_posted': timePosted,
      'post_video': postVideo,
      'com_email': comEmail,
      'post_user_pic': postUserPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostUserVideoRecordDocumentEquality
    implements Equality<PostUserVideoRecord> {
  const PostUserVideoRecordDocumentEquality();

  @override
  bool equals(PostUserVideoRecord? e1, PostUserVideoRecord? e2) {
    return e1?.pVideoTitle == e2?.pVideoTitle &&
        e1?.uVideoDescription == e2?.uVideoDescription &&
        e1?.postUser == e2?.postUser &&
        e1?.timePosted == e2?.timePosted &&
        e1?.postVideo == e2?.postVideo &&
        e1?.comEmail == e2?.comEmail &&
        e1?.postUserPic == e2?.postUserPic;
  }

  @override
  int hash(PostUserVideoRecord? e) => const ListEquality().hash([
        e?.pVideoTitle,
        e?.uVideoDescription,
        e?.postUser,
        e?.timePosted,
        e?.postVideo,
        e?.comEmail,
        e?.postUserPic
      ]);

  @override
  bool isValidKey(Object? o) => o is PostUserVideoRecord;
}
