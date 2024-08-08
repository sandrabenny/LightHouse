import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvBookingRecord extends FirestoreRecord {
  InvBookingRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "senderName" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "senderMail" field.
  String? _senderMail;
  String get senderMail => _senderMail ?? '';
  bool hasSenderMail() => _senderMail != null;

  // "recieverMail" field.
  String? _recieverMail;
  String get recieverMail => _recieverMail ?? '';
  bool hasRecieverMail() => _recieverMail != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "time" field.
  String? _time;
  String get time => _time ?? '';
  bool hasTime() => _time != null;

  void _initializeFields() {
    _senderName = snapshotData['senderName'] as String?;
    _senderMail = snapshotData['senderMail'] as String?;
    _recieverMail = snapshotData['recieverMail'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _link = snapshotData['link'] as String?;
    _time = snapshotData['time'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('inv_booking');

  static Stream<InvBookingRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvBookingRecord.fromSnapshot(s));

  static Future<InvBookingRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvBookingRecord.fromSnapshot(s));

  static InvBookingRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvBookingRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvBookingRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvBookingRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvBookingRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvBookingRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvBookingRecordData({
  String? senderName,
  String? senderMail,
  String? recieverMail,
  DateTime? date,
  String? link,
  String? time,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'senderName': senderName,
      'senderMail': senderMail,
      'recieverMail': recieverMail,
      'date': date,
      'link': link,
      'time': time,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvBookingRecordDocumentEquality implements Equality<InvBookingRecord> {
  const InvBookingRecordDocumentEquality();

  @override
  bool equals(InvBookingRecord? e1, InvBookingRecord? e2) {
    return e1?.senderName == e2?.senderName &&
        e1?.senderMail == e2?.senderMail &&
        e1?.recieverMail == e2?.recieverMail &&
        e1?.date == e2?.date &&
        e1?.link == e2?.link &&
        e1?.time == e2?.time;
  }

  @override
  int hash(InvBookingRecord? e) => const ListEquality().hash([
        e?.senderName,
        e?.senderMail,
        e?.recieverMail,
        e?.date,
        e?.link,
        e?.time
      ]);

  @override
  bool isValidKey(Object? o) => o is InvBookingRecord;
}
