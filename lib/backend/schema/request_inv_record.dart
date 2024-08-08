import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RequestInvRecord extends FirestoreRecord {
  RequestInvRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sender_mail" field.
  String? _senderMail;
  String get senderMail => _senderMail ?? '';
  bool hasSenderMail() => _senderMail != null;

  // "sender_name" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "reciever_mail" field.
  String? _recieverMail;
  String get recieverMail => _recieverMail ?? '';
  bool hasRecieverMail() => _recieverMail != null;

  // "notification_message" field.
  String? _notificationMessage;
  String get notificationMessage => _notificationMessage ?? '';
  bool hasNotificationMessage() => _notificationMessage != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "sender_pic" field.
  String? _senderPic;
  String get senderPic => _senderPic ?? '';
  bool hasSenderPic() => _senderPic != null;

  void _initializeFields() {
    _senderMail = snapshotData['sender_mail'] as String?;
    _senderName = snapshotData['sender_name'] as String?;
    _recieverMail = snapshotData['reciever_mail'] as String?;
    _notificationMessage = snapshotData['notification_message'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _senderPic = snapshotData['sender_pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('request_inv');

  static Stream<RequestInvRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RequestInvRecord.fromSnapshot(s));

  static Future<RequestInvRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RequestInvRecord.fromSnapshot(s));

  static RequestInvRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RequestInvRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RequestInvRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RequestInvRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RequestInvRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RequestInvRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRequestInvRecordData({
  String? senderMail,
  String? senderName,
  String? recieverMail,
  String? notificationMessage,
  DateTime? time,
  String? senderPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender_mail': senderMail,
      'sender_name': senderName,
      'reciever_mail': recieverMail,
      'notification_message': notificationMessage,
      'time': time,
      'sender_pic': senderPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class RequestInvRecordDocumentEquality implements Equality<RequestInvRecord> {
  const RequestInvRecordDocumentEquality();

  @override
  bool equals(RequestInvRecord? e1, RequestInvRecord? e2) {
    return e1?.senderMail == e2?.senderMail &&
        e1?.senderName == e2?.senderName &&
        e1?.recieverMail == e2?.recieverMail &&
        e1?.notificationMessage == e2?.notificationMessage &&
        e1?.time == e2?.time &&
        e1?.senderPic == e2?.senderPic;
  }

  @override
  int hash(RequestInvRecord? e) => const ListEquality().hash([
        e?.senderMail,
        e?.senderName,
        e?.recieverMail,
        e?.notificationMessage,
        e?.time,
        e?.senderPic
      ]);

  @override
  bool isValidKey(Object? o) => o is RequestInvRecord;
}
