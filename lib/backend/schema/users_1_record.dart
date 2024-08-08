import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class Users1Record extends FirestoreRecord {
  Users1Record._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "u_display_name" field.
  String? _uDisplayName;
  String get uDisplayName => _uDisplayName ?? '';
  bool hasUDisplayName() => _uDisplayName != null;

  // "u_email" field.
  String? _uEmail;
  String get uEmail => _uEmail ?? '';
  bool hasUEmail() => _uEmail != null;

  // "u_password" field.
  String? _uPassword;
  String get uPassword => _uPassword ?? '';
  bool hasUPassword() => _uPassword != null;

  // "u_cpassword" field.
  String? _uCpassword;
  String get uCpassword => _uCpassword ?? '';
  bool hasUCpassword() => _uCpassword != null;

  // "u_phone_number" field.
  String? _uPhoneNumber;
  String get uPhoneNumber => _uPhoneNumber ?? '';
  bool hasUPhoneNumber() => _uPhoneNumber != null;

  // "u_gender" field.
  String? _uGender;
  String get uGender => _uGender ?? '';
  bool hasUGender() => _uGender != null;

  // "u_id" field.
  String? _uId;
  String get uId => _uId ?? '';
  bool hasUId() => _uId != null;

  // "u_profile_pic" field.
  String? _uProfilePic;
  String get uProfilePic => _uProfilePic ?? '';
  bool hasUProfilePic() => _uProfilePic != null;

  // "u_created_time" field.
  DateTime? _uCreatedTime;
  DateTime? get uCreatedTime => _uCreatedTime;
  bool hasUCreatedTime() => _uCreatedTime != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "primaryRevenue" field.
  String? _primaryRevenue;
  String get primaryRevenue => _primaryRevenue ?? '';
  bool hasPrimaryRevenue() => _primaryRevenue != null;

  // "annualRevenue" field.
  String? _annualRevenue;
  String get annualRevenue => _annualRevenue ?? '';
  bool hasAnnualRevenue() => _annualRevenue != null;

  // "c_sector" field.
  String? _cSector;
  String get cSector => _cSector ?? '';
  bool hasCSector() => _cSector != null;

  // "c_location" field.
  String? _cLocation;
  String get cLocation => _cLocation ?? '';
  bool hasCLocation() => _cLocation != null;

  // "c_size" field.
  String? _cSize;
  String get cSize => _cSize ?? '';
  bool hasCSize() => _cSize != null;

  // "c_stage" field.
  String? _cStage;
  String get cStage => _cStage ?? '';
  bool hasCStage() => _cStage != null;

  // "target_customer" field.
  String? _targetCustomer;
  String get targetCustomer => _targetCustomer ?? '';
  bool hasTargetCustomer() => _targetCustomer != null;

  // "market_size" field.
  String? _marketSize;
  String get marketSize => _marketSize ?? '';
  bool hasMarketSize() => _marketSize != null;

  // "marketSizeAim" field.
  String? _marketSizeAim;
  String get marketSizeAim => _marketSizeAim ?? '';
  bool hasMarketSizeAim() => _marketSizeAim != null;

  // "fundingRequirement" field.
  String? _fundingRequirement;
  String get fundingRequirement => _fundingRequirement ?? '';
  bool hasFundingRequirement() => _fundingRequirement != null;

  // "fundUse" field.
  String? _fundUse;
  String get fundUse => _fundUse ?? '';
  bool hasFundUse() => _fundUse != null;

  // "customerCount" field.
  String? _customerCount;
  String get customerCount => _customerCount ?? '';
  bool hasCustomerCount() => _customerCount != null;

  // "expectedCount" field.
  String? _expectedCount;
  String get expectedCount => _expectedCount ?? '';
  bool hasExpectedCount() => _expectedCount != null;

  // "patentName" field.
  String? _patentName;
  String get patentName => _patentName ?? '';
  bool hasPatentName() => _patentName != null;

  // "patentNumber" field.
  String? _patentNumber;
  String get patentNumber => _patentNumber ?? '';
  bool hasPatentNumber() => _patentNumber != null;

  // "trademarkName" field.
  String? _trademarkName;
  String get trademarkName => _trademarkName ?? '';
  bool hasTrademarkName() => _trademarkName != null;

  // "trademaekNumber" field.
  String? _trademaekNumber;
  String get trademaekNumber => _trademaekNumber ?? '';
  bool hasTrademaekNumber() => _trademaekNumber != null;

  // "exitStrategy" field.
  String? _exitStrategy;
  String get exitStrategy => _exitStrategy ?? '';
  bool hasExitStrategy() => _exitStrategy != null;

  // "proposedTimeline" field.
  String? _proposedTimeline;
  String get proposedTimeline => _proposedTimeline ?? '';
  bool hasProposedTimeline() => _proposedTimeline != null;

  // "exit_doc" field.
  String? _exitDoc;
  String get exitDoc => _exitDoc ?? '';
  bool hasExitDoc() => _exitDoc != null;

  // "financial_doc" field.
  String? _financialDoc;
  String get financialDoc => _financialDoc ?? '';
  bool hasFinancialDoc() => _financialDoc != null;

  void _initializeFields() {
    _uDisplayName = snapshotData['u_display_name'] as String?;
    _uEmail = snapshotData['u_email'] as String?;
    _uPassword = snapshotData['u_password'] as String?;
    _uCpassword = snapshotData['u_cpassword'] as String?;
    _uPhoneNumber = snapshotData['u_phone_number'] as String?;
    _uGender = snapshotData['u_gender'] as String?;
    _uId = snapshotData['u_id'] as String?;
    _uProfilePic = snapshotData['u_profile_pic'] as String?;
    _uCreatedTime = snapshotData['u_created_time'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _primaryRevenue = snapshotData['primaryRevenue'] as String?;
    _annualRevenue = snapshotData['annualRevenue'] as String?;
    _cSector = snapshotData['c_sector'] as String?;
    _cLocation = snapshotData['c_location'] as String?;
    _cSize = snapshotData['c_size'] as String?;
    _cStage = snapshotData['c_stage'] as String?;
    _targetCustomer = snapshotData['target_customer'] as String?;
    _marketSize = snapshotData['market_size'] as String?;
    _marketSizeAim = snapshotData['marketSizeAim'] as String?;
    _fundingRequirement = snapshotData['fundingRequirement'] as String?;
    _fundUse = snapshotData['fundUse'] as String?;
    _customerCount = snapshotData['customerCount'] as String?;
    _expectedCount = snapshotData['expectedCount'] as String?;
    _patentName = snapshotData['patentName'] as String?;
    _patentNumber = snapshotData['patentNumber'] as String?;
    _trademarkName = snapshotData['trademarkName'] as String?;
    _trademaekNumber = snapshotData['trademaekNumber'] as String?;
    _exitStrategy = snapshotData['exitStrategy'] as String?;
    _proposedTimeline = snapshotData['proposedTimeline'] as String?;
    _exitDoc = snapshotData['exit_doc'] as String?;
    _financialDoc = snapshotData['financial_doc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users_1');

  static Stream<Users1Record> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => Users1Record.fromSnapshot(s));

  static Future<Users1Record> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => Users1Record.fromSnapshot(s));

  static Users1Record fromSnapshot(DocumentSnapshot snapshot) => Users1Record._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static Users1Record getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      Users1Record._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'Users1Record(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is Users1Record &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsers1RecordData({
  String? uDisplayName,
  String? uEmail,
  String? uPassword,
  String? uCpassword,
  String? uPhoneNumber,
  String? uGender,
  String? uId,
  String? uProfilePic,
  DateTime? uCreatedTime,
  String? description,
  String? primaryRevenue,
  String? annualRevenue,
  String? cSector,
  String? cLocation,
  String? cSize,
  String? cStage,
  String? targetCustomer,
  String? marketSize,
  String? marketSizeAim,
  String? fundingRequirement,
  String? fundUse,
  String? customerCount,
  String? expectedCount,
  String? patentName,
  String? patentNumber,
  String? trademarkName,
  String? trademaekNumber,
  String? exitStrategy,
  String? proposedTimeline,
  String? exitDoc,
  String? financialDoc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'u_display_name': uDisplayName,
      'u_email': uEmail,
      'u_password': uPassword,
      'u_cpassword': uCpassword,
      'u_phone_number': uPhoneNumber,
      'u_gender': uGender,
      'u_id': uId,
      'u_profile_pic': uProfilePic,
      'u_created_time': uCreatedTime,
      'description': description,
      'primaryRevenue': primaryRevenue,
      'annualRevenue': annualRevenue,
      'c_sector': cSector,
      'c_location': cLocation,
      'c_size': cSize,
      'c_stage': cStage,
      'target_customer': targetCustomer,
      'market_size': marketSize,
      'marketSizeAim': marketSizeAim,
      'fundingRequirement': fundingRequirement,
      'fundUse': fundUse,
      'customerCount': customerCount,
      'expectedCount': expectedCount,
      'patentName': patentName,
      'patentNumber': patentNumber,
      'trademarkName': trademarkName,
      'trademaekNumber': trademaekNumber,
      'exitStrategy': exitStrategy,
      'proposedTimeline': proposedTimeline,
      'exit_doc': exitDoc,
      'financial_doc': financialDoc,
    }.withoutNulls,
  );

  return firestoreData;
}

class Users1RecordDocumentEquality implements Equality<Users1Record> {
  const Users1RecordDocumentEquality();

  @override
  bool equals(Users1Record? e1, Users1Record? e2) {
    return e1?.uDisplayName == e2?.uDisplayName &&
        e1?.uEmail == e2?.uEmail &&
        e1?.uPassword == e2?.uPassword &&
        e1?.uCpassword == e2?.uCpassword &&
        e1?.uPhoneNumber == e2?.uPhoneNumber &&
        e1?.uGender == e2?.uGender &&
        e1?.uId == e2?.uId &&
        e1?.uProfilePic == e2?.uProfilePic &&
        e1?.uCreatedTime == e2?.uCreatedTime &&
        e1?.description == e2?.description &&
        e1?.primaryRevenue == e2?.primaryRevenue &&
        e1?.annualRevenue == e2?.annualRevenue &&
        e1?.cSector == e2?.cSector &&
        e1?.cLocation == e2?.cLocation &&
        e1?.cSize == e2?.cSize &&
        e1?.cStage == e2?.cStage &&
        e1?.targetCustomer == e2?.targetCustomer &&
        e1?.marketSize == e2?.marketSize &&
        e1?.marketSizeAim == e2?.marketSizeAim &&
        e1?.fundingRequirement == e2?.fundingRequirement &&
        e1?.fundUse == e2?.fundUse &&
        e1?.customerCount == e2?.customerCount &&
        e1?.expectedCount == e2?.expectedCount &&
        e1?.patentName == e2?.patentName &&
        e1?.patentNumber == e2?.patentNumber &&
        e1?.trademarkName == e2?.trademarkName &&
        e1?.trademaekNumber == e2?.trademaekNumber &&
        e1?.exitStrategy == e2?.exitStrategy &&
        e1?.proposedTimeline == e2?.proposedTimeline &&
        e1?.exitDoc == e2?.exitDoc &&
        e1?.financialDoc == e2?.financialDoc;
  }

  @override
  int hash(Users1Record? e) => const ListEquality().hash([
        e?.uDisplayName,
        e?.uEmail,
        e?.uPassword,
        e?.uCpassword,
        e?.uPhoneNumber,
        e?.uGender,
        e?.uId,
        e?.uProfilePic,
        e?.uCreatedTime,
        e?.description,
        e?.primaryRevenue,
        e?.annualRevenue,
        e?.cSector,
        e?.cLocation,
        e?.cSize,
        e?.cStage,
        e?.targetCustomer,
        e?.marketSize,
        e?.marketSizeAim,
        e?.fundingRequirement,
        e?.fundUse,
        e?.customerCount,
        e?.expectedCount,
        e?.patentName,
        e?.patentNumber,
        e?.trademarkName,
        e?.trademaekNumber,
        e?.exitStrategy,
        e?.proposedTimeline,
        e?.exitDoc,
        e?.financialDoc
      ]);

  @override
  bool isValidKey(Object? o) => o is Users1Record;
}
