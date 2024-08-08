import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LoginUsersRecord extends FirestoreRecord {
  LoginUsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "investors" field.
  List<String>? _investors;
  List<String> get investors => _investors ?? const [];
  bool hasInvestors() => _investors != null;

  // "users" field.
  List<String>? _users;
  List<String> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  void _initializeFields() {
    _investors = getDataList(snapshotData['investors']);
    _users = getDataList(snapshotData['users']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('login_users');

  static Stream<LoginUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LoginUsersRecord.fromSnapshot(s));

  static Future<LoginUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LoginUsersRecord.fromSnapshot(s));

  static LoginUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LoginUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LoginUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LoginUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LoginUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LoginUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLoginUsersRecordData() {
  final firestoreData = mapToFirestore(
    <String, dynamic>{}.withoutNulls,
  );

  return firestoreData;
}

class LoginUsersRecordDocumentEquality implements Equality<LoginUsersRecord> {
  const LoginUsersRecordDocumentEquality();

  @override
  bool equals(LoginUsersRecord? e1, LoginUsersRecord? e2) {
    const listEquality = ListEquality();
    return listEquality.equals(e1?.investors, e2?.investors) &&
        listEquality.equals(e1?.users, e2?.users);
  }

  @override
  int hash(LoginUsersRecord? e) =>
      const ListEquality().hash([e?.investors, e?.users]);

  @override
  bool isValidKey(Object? o) => o is LoginUsersRecord;
}
