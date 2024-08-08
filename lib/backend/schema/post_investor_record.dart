import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostInvestorRecord extends FirestoreRecord {
  PostInvestorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "investor_email" field.
  String? _investorEmail;
  String get investorEmail => _investorEmail ?? '';
  bool hasInvestorEmail() => _investorEmail != null;

  // "post_image" field.
  String? _postImage;
  String get postImage => _postImage ?? '';
  bool hasPostImage() => _postImage != null;

  // "post_description" field.
  String? _postDescription;
  String get postDescription => _postDescription ?? '';
  bool hasPostDescription() => _postDescription != null;

  // "time_posted" field.
  DateTime? _timePosted;
  DateTime? get timePosted => _timePosted;
  bool hasTimePosted() => _timePosted != null;

  // "post_investor" field.
  DocumentReference? _postInvestor;
  DocumentReference? get postInvestor => _postInvestor;
  bool hasPostInvestor() => _postInvestor != null;

  // "post_investor_name" field.
  String? _postInvestorName;
  String get postInvestorName => _postInvestorName ?? '';
  bool hasPostInvestorName() => _postInvestorName != null;

  // "post_occupation" field.
  String? _postOccupation;
  String get postOccupation => _postOccupation ?? '';
  bool hasPostOccupation() => _postOccupation != null;

  // "post_inv_pic" field.
  String? _postInvPic;
  String get postInvPic => _postInvPic ?? '';
  bool hasPostInvPic() => _postInvPic != null;

  void _initializeFields() {
    _investorEmail = snapshotData['investor_email'] as String?;
    _postImage = snapshotData['post_image'] as String?;
    _postDescription = snapshotData['post_description'] as String?;
    _timePosted = snapshotData['time_posted'] as DateTime?;
    _postInvestor = snapshotData['post_investor'] as DocumentReference?;
    _postInvestorName = snapshotData['post_investor_name'] as String?;
    _postOccupation = snapshotData['post_occupation'] as String?;
    _postInvPic = snapshotData['post_inv_pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('post_investor');

  static Stream<PostInvestorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostInvestorRecord.fromSnapshot(s));

  static Future<PostInvestorRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostInvestorRecord.fromSnapshot(s));

  static PostInvestorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostInvestorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostInvestorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostInvestorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostInvestorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostInvestorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostInvestorRecordData({
  String? investorEmail,
  String? postImage,
  String? postDescription,
  DateTime? timePosted,
  DocumentReference? postInvestor,
  String? postInvestorName,
  String? postOccupation,
  String? postInvPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'investor_email': investorEmail,
      'post_image': postImage,
      'post_description': postDescription,
      'time_posted': timePosted,
      'post_investor': postInvestor,
      'post_investor_name': postInvestorName,
      'post_occupation': postOccupation,
      'post_inv_pic': postInvPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostInvestorRecordDocumentEquality
    implements Equality<PostInvestorRecord> {
  const PostInvestorRecordDocumentEquality();

  @override
  bool equals(PostInvestorRecord? e1, PostInvestorRecord? e2) {
    return e1?.investorEmail == e2?.investorEmail &&
        e1?.postImage == e2?.postImage &&
        e1?.postDescription == e2?.postDescription &&
        e1?.timePosted == e2?.timePosted &&
        e1?.postInvestor == e2?.postInvestor &&
        e1?.postInvestorName == e2?.postInvestorName &&
        e1?.postOccupation == e2?.postOccupation &&
        e1?.postInvPic == e2?.postInvPic;
  }

  @override
  int hash(PostInvestorRecord? e) => const ListEquality().hash([
        e?.investorEmail,
        e?.postImage,
        e?.postDescription,
        e?.timePosted,
        e?.postInvestor,
        e?.postInvestorName,
        e?.postOccupation,
        e?.postInvPic
      ]);

  @override
  bool isValidKey(Object? o) => o is PostInvestorRecord;
}
