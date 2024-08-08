import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompBookingRecord extends FirestoreRecord {
  CompBookingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "senderName" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "senderEmail" field.
  String? _senderEmail;
  String get senderEmail => _senderEmail ?? '';
  bool hasSenderEmail() => _senderEmail != null;

  // "recieverMail" field.
  String? _recieverMail;
  String get recieverMail => _recieverMail ?? '';
  bool hasRecieverMail() => _recieverMail != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "date" field.
  String? _date;
  String get date => _date ?? '';
  bool hasDate() => _date != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  void _initializeFields() {
    _senderName = snapshotData['senderName'] as String?;
    _senderEmail = snapshotData['senderEmail'] as String?;
    _recieverMail = snapshotData['recieverMail'] as String?;
    _link = snapshotData['link'] as String?;
    _date = snapshotData['date'] as String?;
    _time = snapshotData['time'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('comp_booking');

  static Stream<CompBookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompBookingRecord.fromSnapshot(s));

  static Future<CompBookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompBookingRecord.fromSnapshot(s));

  static CompBookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CompBookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompBookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompBookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompBookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompBookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompBookingRecordData({
  String? senderName,
  String? senderEmail,
  String? recieverMail,
  String? link,
  String? date,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'senderName': senderName,
      'senderEmail': senderEmail,
      'recieverMail': recieverMail,
      'link': link,
      'date': date,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class CompBookingRecordDocumentEquality implements Equality<CompBookingRecord> {
  const CompBookingRecordDocumentEquality();

  @override
  bool equals(CompBookingRecord? e1, CompBookingRecord? e2) {
    return e1?.senderName == e2?.senderName &&
        e1?.senderEmail == e2?.senderEmail &&
        e1?.recieverMail == e2?.recieverMail &&
        e1?.link == e2?.link &&
        e1?.date == e2?.date &&
        e1?.time == e2?.time;
  }

  @override
  int hash(CompBookingRecord? e) => const ListEquality().hash([
        e?.senderName,
        e?.senderEmail,
        e?.recieverMail,
        e?.link,
        e?.date,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is CompBookingRecord;
}
