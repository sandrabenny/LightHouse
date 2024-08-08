import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ChatUsersRecord extends FirestoreRecord {
  ChatUsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "sender_mail" field.
  String? _senderMail;
  String get senderMail => _senderMail ?? '';
  bool hasSenderMail() => _senderMail != null;

  // "notification_pushed" field.
  String? _notificationPushed;
  String get notificationPushed => _notificationPushed ?? '';
  bool hasNotificationPushed() => _notificationPushed != null;

  // "reciever_mail" field.
  String? _recieverMail;
  String get recieverMail => _recieverMail ?? '';
  bool hasRecieverMail() => _recieverMail != null;

  // "pushed_mail" field.
  DateTime? _pushedMail;
  DateTime? get pushedMail => _pushedMail;
  bool hasPushedMail() => _pushedMail != null;

  // "sender_name" field.
  String? _senderName;
  String get senderName => _senderName ?? '';
  bool hasSenderName() => _senderName != null;

  // "sender_pic" field.
  String? _senderPic;
  String get senderPic => _senderPic ?? '';
  bool hasSenderPic() => _senderPic != null;

  void _initializeFields() {
    _senderMail = snapshotData['sender_mail'] as String?;
    _notificationPushed = snapshotData['notification_pushed'] as String?;
    _recieverMail = snapshotData['reciever_mail'] as String?;
    _pushedMail = snapshotData['pushed_mail'] as DateTime?;
    _senderName = snapshotData['sender_name'] as String?;
    _senderPic = snapshotData['sender_pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_users');

  static Stream<ChatUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ChatUsersRecord.fromSnapshot(s));

  static Future<ChatUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ChatUsersRecord.fromSnapshot(s));

  static ChatUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ChatUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ChatUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ChatUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ChatUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ChatUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createChatUsersRecordData({
  String? senderMail,
  String? notificationPushed,
  String? recieverMail,
  DateTime? pushedMail,
  String? senderName,
  String? senderPic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'sender_mail': senderMail,
      'notification_pushed': notificationPushed,
      'reciever_mail': recieverMail,
      'pushed_mail': pushedMail,
      'sender_name': senderName,
      'sender_pic': senderPic,
    }.withoutNulls,
  );

  return firestoreData;
}

class ChatUsersRecordDocumentEquality implements Equality<ChatUsersRecord> {
  const ChatUsersRecordDocumentEquality();

  @override
  bool equals(ChatUsersRecord? e1, ChatUsersRecord? e2) {
    return e1?.senderMail == e2?.senderMail &&
        e1?.notificationPushed == e2?.notificationPushed &&
        e1?.recieverMail == e2?.recieverMail &&
        e1?.pushedMail == e2?.pushedMail &&
        e1?.senderName == e2?.senderName &&
        e1?.senderPic == e2?.senderPic;
  }

  @override
  int hash(ChatUsersRecord? e) => const ListEquality().hash([
        e?.senderMail,
        e?.notificationPushed,
        e?.recieverMail,
        e?.pushedMail,
        e?.senderName,
        e?.senderPic
      ]);

  @override
  bool isValidKey(Object? o) => o is ChatUsersRecord;
}
