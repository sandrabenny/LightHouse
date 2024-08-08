import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyRequestsCompanyRecord extends FirestoreRecord {
  MyRequestsCompanyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "c_mail" field.
  String? _cMail;
  String get cMail => _cMail ?? '';
  bool hasCMail() => _cMail != null;

  // "i_mail" field.
  String? _iMail;
  String get iMail => _iMail ?? '';
  bool hasIMail() => _iMail != null;

  // "i_pic" field.
  String? _iPic;
  String get iPic => _iPic ?? '';
  bool hasIPic() => _iPic != null;

  // "i_name" field.
  String? _iName;
  String get iName => _iName ?? '';
  bool hasIName() => _iName != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  void _initializeFields() {
    _cMail = snapshotData['c_mail'] as String?;
    _iMail = snapshotData['i_mail'] as String?;
    _iPic = snapshotData['i_pic'] as String?;
    _iName = snapshotData['i_name'] as String?;
    _time = snapshotData['time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('my_requests-company');

  static Stream<MyRequestsCompanyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyRequestsCompanyRecord.fromSnapshot(s));

  static Future<MyRequestsCompanyRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MyRequestsCompanyRecord.fromSnapshot(s));

  static MyRequestsCompanyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyRequestsCompanyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyRequestsCompanyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyRequestsCompanyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyRequestsCompanyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyRequestsCompanyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyRequestsCompanyRecordData({
  String? cMail,
  String? iMail,
  String? iPic,
  String? iName,
  DateTime? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'c_mail': cMail,
      'i_mail': iMail,
      'i_pic': iPic,
      'i_name': iName,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyRequestsCompanyRecordDocumentEquality
    implements Equality<MyRequestsCompanyRecord> {
  const MyRequestsCompanyRecordDocumentEquality();

  @override
  bool equals(MyRequestsCompanyRecord? e1, MyRequestsCompanyRecord? e2) {
    return e1?.cMail == e2?.cMail &&
        e1?.iMail == e2?.iMail &&
        e1?.iPic == e2?.iPic &&
        e1?.iName == e2?.iName &&
        e1?.time == e2?.time;
  }

  @override
  int hash(MyRequestsCompanyRecord? e) => const ListEquality()
      .hash([e?.cMail, e?.iMail, e?.iPic, e?.iName, e?.time]);

  @override
  bool isValidKey(Object? o) => o is MyRequestsCompanyRecord;
}
