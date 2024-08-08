import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostUserRecord extends FirestoreRecord {
  PostUserRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "upost_title" field.
  String? _upostTitle;
  String get upostTitle => _upostTitle ?? '';
  bool hasUpostTitle() => _upostTitle != null;

  // "upost_description" field.
  String? _upostDescription;
  String get upostDescription => _upostDescription ?? '';
  bool hasUpostDescription() => _upostDescription != null;

  // "post_user" field.
  DocumentReference? _postUser;
  DocumentReference? get postUser => _postUser;
  bool hasPostUser() => _postUser != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "likes" field.
  List<DocumentReference>? _likes;
  List<DocumentReference> get likes => _likes ?? const [];
  bool hasLikes() => _likes != null;

  // "num_comments" field.
  int? _numComments;
  int get numComments => _numComments ?? 0;
  bool hasNumComments() => _numComments != null;

  // "num_votes" field.
  int? _numVotes;
  int get numVotes => _numVotes ?? 0;
  bool hasNumVotes() => _numVotes != null;

  // "post_liked_by" field.
  List<DocumentReference>? _postLikedBy;
  List<DocumentReference> get postLikedBy => _postLikedBy ?? const [];
  bool hasPostLikedBy() => _postLikedBy != null;

  // "post_image" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  bool hasPostImage() => _postImage != null;

  // "post_video" field.
  String? _postVideo;
  String get postVideo => _postVideo ?? '';
  bool hasPostVideo() => _postVideo != null;

  // "com_email" field.
  String? _comEmail;
  String get comEmail => _comEmail ?? '';
  bool hasComEmail() => _comEmail != null;

  // "post_id" field.
  String? _postId;
  String get postId => _postId ?? '';
  bool hasPostId() => _postId != null;

  // "post_company" field.
  String? _postCompany;
  String get postCompany => _postCompany ?? '';
  bool hasPostCompany() => _postCompany != null;

  // "post_sector" field.
  String? _postSector;
  String get postSector => _postSector ?? '';
  bool hasPostSector() => _postSector != null;

  // "post_user_pic" field.
  String? _postUserPic;
  String get postUserPic => _postUserPic ?? '';
  bool hasPostUserPic() => _postUserPic != null;

  void _initializeFields() {
    _upostTitle = snapshotData['upost_title'] as String?;
    _upostDescription = snapshotData['upost_description'] as String?;
    _postUser = snapshotData['post_user'] as DocumentReference?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _likes = getDataList(snapshotData['likes']);
    _numComments = castToType<int>(snapshotData['num_comments']);
    _numVotes = castToType<int>(snapshotData['num_votes']);
    _postLikedBy = getDataList(snapshotData['post_liked_by']);
    _postImage = snapshotData['post_image'] as String?;
    _postVideo = snapshotData['post_video'] as String?;
    _comEmail = snapshotData['com_email'] as String?;
    _postId = snapshotData['post_id'] as String?;
    _postCompany = snapshotData['post_company'] as String?;
    _postSector = snapshotData['post_sector'] as String?;
    _postUserPic = snapshotData['post_user_pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post_user');

  static Stream<PostUserRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostUserRecord.fromSnapshot(s));

  static Future<PostUserRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostUserRecord.fromSnapshot(s));

  static PostUserRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostUserRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostUserRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostUserRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostUserRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostUserRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostUserRecordData({
  String? upostTitle,
  String? upostDescription,
  DocumentReference? postUser,
  DateTime? timePosted,
  int? numComments,
  int? numVotes,
  String? postImage,
  String? postVideo,
  String? comEmail,
  String? postId,
  String? postCompany,
  String? postSector,
  String? postUserPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'upost_title': upostTitle,
      'upost_description': upostDescription,
      'post_user': postUser,
      'time_posted': timePosted,
      'num_comments': numComments,
      'num_votes': numVotes,
      'post_image': postImage,
      'post_video': postVideo,
      'com_email': comEmail,
      'post_id': postId,
      'post_company': postCompany,
      'post_sector': postSector,
      'post_user_pic': postUserPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostUserRecordDocumentEquality implements Equality<PostUserRecord> {
  const PostUserRecordDocumentEquality();

  @override
  bool equals(PostUserRecord? e1, PostUserRecord? e2) {
    const listEquality = ListEquality();
    return e1?.upostTitle == e2?.upostTitle &&
        e1?.upostDescription == e2?.upostDescription &&
        e1?.postUser == e2?.postUser &&
        e1?.timePosted == e2?.timePosted &&
        listEquality.equals(e1?.likes, e2?.likes) &&
        e1?.numComments == e2?.numComments &&
        e1?.numVotes == e2?.numVotes &&
        listEquality.equals(e1?.postLikedBy, e2?.postLikedBy) &&
        e1?.postImage == e2?.postImage &&
        e1?.postVideo == e2?.postVideo &&
        e1?.comEmail == e2?.comEmail &&
        e1?.postId == e2?.postId &&
        e1?.postCompany == e2?.postCompany &&
        e1?.postSector == e2?.postSector &&
        e1?.postUserPic == e2?.postUserPic;
  }

  @override
  int hash(PostUserRecord? e) => const ListEquality().hash([
        e?.upostTitle,
        e?.upostDescription,
        e?.postUser,
        e?.timePosted,
        e?.likes,
        e?.numComments,
        e?.numVotes,
        e?.postLikedBy,
        e?.postImage,
        e?.postVideo,
        e?.comEmail,
        e?.postId,
        e?.postCompany,
        e?.postSector,
        e?.postUserPic
      ]);

  @override
  bool isValidKey(Object? o) => o is PostUserRecord;
}
