import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class InvestorsRecord extends FirestoreRecord {
  InvestorsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "i_display_name" field.
  String? _iDisplayName;
  String get iDisplayName => _iDisplayName ?? '';
  bool hasIDisplayName() => _iDisplayName != null;

  // "i_email" field.
  String? _iEmail;
  String get iEmail => _iEmail ?? '';
  bool hasIEmail() => _iEmail != null;

  // "i_phone_number" field.
  String? _iPhoneNumber;
  String get iPhoneNumber => _iPhoneNumber ?? '';
  bool hasIPhoneNumber() => _iPhoneNumber != null;

  // "i_created_time" field.
  DateTime? _iCreatedTime;
  DateTime? get iCreatedTime => _iCreatedTime;
  bool hasICreatedTime() => _iCreatedTime != null;

  // "i_password" field.
  String? _iPassword;
  String get iPassword => _iPassword ?? '';
  bool hasIPassword() => _iPassword != null;

  // "i_cpassword" field.
  String? _iCpassword;
  String get iCpassword => _iCpassword ?? '';
  bool hasICpassword() => _iCpassword != null;

  // "i_pic" field.
  String? _iPic;
  String get iPic => _iPic ?? '';
  bool hasIPic() => _iPic != null;

  // "inv_sector" field.
  String? _invSector;
  String get invSector => _invSector ?? '';
  bool hasInvSector() => _invSector != null;

  // "inv_stage" field.
  String? _invStage;
  String get invStage => _invStage ?? '';
  bool hasInvStage() => _invStage != null;

  // "inv_size" field.
  String? _invSize;
  String get invSize => _invSize ?? '';
  bool hasInvSize() => _invSize != null;

  // "inv_location" field.
  String? _invLocation;
  String get invLocation => _invLocation ?? '';
  bool hasInvLocation() => _invLocation != null;

  // "occupation" field.
  String? _occupation;
  String get occupation => _occupation ?? '';
  bool hasOccupation() => _occupation != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "interested_field" field.
  String? _interestedField;
  String get interestedField => _interestedField ?? '';
  bool hasInterestedField() => _interestedField != null;

  // "previous_investment" field.
  String? _previousInvestment;
  String get previousInvestment => _previousInvestment ?? '';
  bool hasPreviousInvestment() => _previousInvestment != null;

  // "annual_revenue" field.
  String? _annualRevenue;
  String get annualRevenue => _annualRevenue ?? '';
  bool hasAnnualRevenue() => _annualRevenue != null;

  void _initializeFields() {
    _iDisplayName = snapshotData['i_display_name'] as String?;
    _iEmail = snapshotData['i_email'] as String?;
    _iPhoneNumber = snapshotData['i_phone_number'] as String?;
    _iCreatedTime = snapshotData['i_created_time'] as DateTime?;
    _iPassword = snapshotData['i_password'] as String?;
    _iCpassword = snapshotData['i_cpassword'] as String?;
    _iPic = snapshotData['i_pic'] as String?;
    _invSector = snapshotData['inv_sector'] as String?;
    _invStage = snapshotData['inv_stage'] as String?;
    _invSize = snapshotData['inv_size'] as String?;
    _invLocation = snapshotData['inv_location'] as String?;
    _occupation = snapshotData['occupation'] as String?;
    _bio = snapshotData['bio'] as String?;
    _interestedField = snapshotData['interested_field'] as String?;
    _previousInvestment = snapshotData['previous_investment'] as String?;
    _annualRevenue = snapshotData['annual_revenue'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('investors');

  static Stream<InvestorsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => InvestorsRecord.fromSnapshot(s));

  static Future<InvestorsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => InvestorsRecord.fromSnapshot(s));

  static InvestorsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      InvestorsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static InvestorsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      InvestorsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'InvestorsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is InvestorsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createInvestorsRecordData({
  String? iDisplayName,
  String? iEmail,
  String? iPhoneNumber,
  DateTime? iCreatedTime,
  String? iPassword,
  String? iCpassword,
  String? iPic,
  String? invSector,
  String? invStage,
  String? invSize,
  String? invLocation,
  String? occupation,
  String? bio,
  String? interestedField,
  String? previousInvestment,
  String? annualRevenue,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'i_display_name': iDisplayName,
      'i_email': iEmail,
      'i_phone_number': iPhoneNumber,
      'i_created_time': iCreatedTime,
      'i_password': iPassword,
      'i_cpassword': iCpassword,
      'i_pic': iPic,
      'inv_sector': invSector,
      'inv_stage': invStage,
      'inv_size': invSize,
      'inv_location': invLocation,
      'occupation': occupation,
      'bio': bio,
      'interested_field': interestedField,
      'previous_investment': previousInvestment,
      'annual_revenue': annualRevenue,
    }.withoutNulls,
  );

  return firestoreData;
}

class InvestorsRecordDocumentEquality implements Equality<InvestorsRecord> {
  const InvestorsRecordDocumentEquality();

  @override
  bool equals(InvestorsRecord? e1, InvestorsRecord? e2) {
    return e1?.iDisplayName == e2?.iDisplayName &&
        e1?.iEmail == e2?.iEmail &&
        e1?.iPhoneNumber == e2?.iPhoneNumber &&
        e1?.iCreatedTime == e2?.iCreatedTime &&
        e1?.iPassword == e2?.iPassword &&
        e1?.iCpassword == e2?.iCpassword &&
        e1?.iPic == e2?.iPic &&
        e1?.invSector == e2?.invSector &&
        e1?.invStage == e2?.invStage &&
        e1?.invSize == e2?.invSize &&
        e1?.invLocation == e2?.invLocation &&
        e1?.occupation == e2?.occupation &&
        e1?.bio == e2?.bio &&
        e1?.interestedField == e2?.interestedField &&
        e1?.previousInvestment == e2?.previousInvestment &&
        e1?.annualRevenue == e2?.annualRevenue;
  }

  @override
  int hash(InvestorsRecord? e) => const ListEquality().hash([
        e?.iDisplayName,
        e?.iEmail,
        e?.iPhoneNumber,
        e?.iCreatedTime,
        e?.iPassword,
        e?.iCpassword,
        e?.iPic,
        e?.invSector,
        e?.invStage,
        e?.invSize,
        e?.invLocation,
        e?.occupation,
        e?.bio,
        e?.interestedField,
        e?.previousInvestment,
        e?.annualRevenue
      ]);

  @override
  bool isValidKey(Object? o) => o is InvestorsRecord;
}
