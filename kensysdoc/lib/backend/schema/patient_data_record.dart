import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PatientDataRecord extends FirestoreRecord {
  PatientDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "doctor_id" field.
  String? _doctorId;
  String get doctorId => _doctorId ?? '';
  bool hasDoctorId() => _doctorId != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  // "patient_name" field.
  String? _patientName;
  String get patientName => _patientName ?? '';
  bool hasPatientName() => _patientName != null;

  // "diag" field.
  String? _diag;
  String get diag => _diag ?? '';
  bool hasDiag() => _diag != null;

  // "diagDoc" field.
  String? _diagDoc;
  String get diagDoc => _diagDoc ?? '';
  bool hasDiagDoc() => _diagDoc != null;

  void _initializeFields() {
    _doctorId = snapshotData['doctor_id'] as String?;
    _userId = snapshotData['user_id'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _pic = snapshotData['pic'] as String?;
    _patientName = snapshotData['patient_name'] as String?;
    _diag = snapshotData['diag'] as String?;
    _diagDoc = snapshotData['diagDoc'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('patient_data');

  static Stream<PatientDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PatientDataRecord.fromSnapshot(s));

  static Future<PatientDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PatientDataRecord.fromSnapshot(s));

  static PatientDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PatientDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PatientDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PatientDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PatientDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PatientDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPatientDataRecordData({
  String? doctorId,
  String? userId,
  String? uid,
  DateTime? createdTime,
  String? pic,
  String? patientName,
  String? diag,
  String? diagDoc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'doctor_id': doctorId,
      'user_id': userId,
      'uid': uid,
      'created_time': createdTime,
      'pic': pic,
      'patient_name': patientName,
      'diag': diag,
      'diagDoc': diagDoc,
    }.withoutNulls,
  );

  return firestoreData;
}

class PatientDataRecordDocumentEquality implements Equality<PatientDataRecord> {
  const PatientDataRecordDocumentEquality();

  @override
  bool equals(PatientDataRecord? e1, PatientDataRecord? e2) {
    return e1?.doctorId == e2?.doctorId &&
        e1?.userId == e2?.userId &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.pic == e2?.pic &&
        e1?.patientName == e2?.patientName &&
        e1?.diag == e2?.diag &&
        e1?.diagDoc == e2?.diagDoc;
  }

  @override
  int hash(PatientDataRecord? e) => const ListEquality().hash([
        e?.doctorId,
        e?.userId,
        e?.uid,
        e?.createdTime,
        e?.pic,
        e?.patientName,
        e?.diag,
        e?.diagDoc
      ]);

  @override
  bool isValidKey(Object? o) => o is PatientDataRecord;
}
