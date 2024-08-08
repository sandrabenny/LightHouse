import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyRequestsInvestorRecord extends FirestoreRecord {
  MyRequestsInvestorRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "i_mail" field.
  String? _iMail;
  String get iMail => _iMail ?? '';
  bool hasIMail() => _iMail != null;

  // "c_mail" field.
  String? _cMail;
  String get cMail => _cMail ?? '';
  bool hasCMail() => _cMail != null;

  // "c_pic" field.
  String? _cPic;
  String get cPic => _cPic ?? '';
  bool hasCPic() => _cPic != null;

  // "c_name" field.
  String? _cName;
  String get cName => _cName ?? '';
  bool hasCName() => _cName != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _iMail = snapshotData['i_mail'] as String?;
    _cMail = snapshotData['c_mail'] as String?;
    _cPic = snapshotData['c_pic'] as String?;
    _cName = snapshotData['c_name'] as String?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('my_requests-investor');

  static Stream<MyRequestsInvestorRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyRequestsInvestorRecord.fromSnapshot(s));

  static Future<MyRequestsInvestorRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MyRequestsInvestorRecord.fromSnapshot(s));

  static MyRequestsInvestorRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyRequestsInvestorRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyRequestsInvestorRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyRequestsInvestorRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyRequestsInvestorRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyRequestsInvestorRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyRequestsInvestorRecordData({
  String? iMail,
  String? cMail,
  String? cPic,
  String? cName,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'i_mail': iMail,
      'c_mail': cMail,
      'c_pic': cPic,
      'c_name': cName,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyRequestsInvestorRecordDocumentEquality
    implements Equality<MyRequestsInvestorRecord> {
  const MyRequestsInvestorRecordDocumentEquality();

  @override
  bool equals(MyRequestsInvestorRecord? e1, MyRequestsInvestorRecord? e2) {
    return e1?.iMail == e2?.iMail &&
        e1?.cMail == e2?.cMail &&
        e1?.cPic == e2?.cPic &&
        e1?.cName == e2?.cName &&
        e1?.time == e2?.time;
  }

  @override
  int hash(MyRequestsInvestorRecord? e) => const ListEquality()
      .hash([e?.iMail, e?.cMail, e?.cPic, e?.cName, e?.time]);

  @override
  bool isValidKey(Object? o) => o is MyRequestsInvestorRecord;
}
