import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NurseDataRecord extends FirestoreRecord {
  NurseDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nurse_name" field.
  String? _nurseName;
  String get nurseName => _nurseName ?? '';
  bool hasNurseName() => _nurseName != null;

  // "nurse_id" field.
  String? _nurseId;
  String get nurseId => _nurseId ?? '';
  bool hasNurseId() => _nurseId != null;

  // "doc_uid" field.
  String? _docUid;
  String get docUid => _docUid ?? '';
  bool hasDocUid() => _docUid != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "nurse_ref" field.
  DocumentReference? _nurseRef;
  DocumentReference? get nurseRef => _nurseRef;
  bool hasNurseRef() => _nurseRef != null;

  // "spec" field.
  String? _spec;
  String get spec => _spec ?? '';
  bool hasSpec() => _spec != null;

  // "nur_image" field.
  String? _nurImage;
  String get nurImage => _nurImage ?? '';
  bool hasNurImage() => _nurImage != null;

  // "status" field.
  bool? _status;
  bool get status => _status ?? false;
  bool hasStatus() => _status != null;

  // "pat_assign" field.
  String? _patAssign;
  String get patAssign => _patAssign ?? '';
  bool hasPatAssign() => _patAssign != null;

  void _initializeFields() {
    _nurseName = snapshotData['nurse_name'] as String?;
    _nurseId = snapshotData['nurse_id'] as String?;
    _docUid = snapshotData['doc_uid'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _nurseRef = snapshotData['nurse_ref'] as DocumentReference?;
    _spec = snapshotData['spec'] as String?;
    _nurImage = snapshotData['nur_image'] as String?;
    _status = snapshotData['status'] as bool?;
    _patAssign = snapshotData['pat_assign'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('nurse_data');

  static Stream<NurseDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NurseDataRecord.fromSnapshot(s));

  static Future<NurseDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NurseDataRecord.fromSnapshot(s));

  static NurseDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      NurseDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NurseDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NurseDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NurseDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NurseDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNurseDataRecordData({
  String? nurseName,
  String? nurseId,
  String? docUid,
  String? uid,
  DateTime? createdTime,
  DocumentReference? nurseRef,
  String? spec,
  String? nurImage,
  bool? status,
  String? patAssign,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nurse_name': nurseName,
      'nurse_id': nurseId,
      'doc_uid': docUid,
      'uid': uid,
      'created_time': createdTime,
      'nurse_ref': nurseRef,
      'spec': spec,
      'nur_image': nurImage,
      'status': status,
      'pat_assign': patAssign,
    }.withoutNulls,
  );

  return firestoreData;
}

class NurseDataRecordDocumentEquality implements Equality<NurseDataRecord> {
  const NurseDataRecordDocumentEquality();

  @override
  bool equals(NurseDataRecord? e1, NurseDataRecord? e2) {
    return e1?.nurseName == e2?.nurseName &&
        e1?.nurseId == e2?.nurseId &&
        e1?.docUid == e2?.docUid &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.nurseRef == e2?.nurseRef &&
        e1?.spec == e2?.spec &&
        e1?.nurImage == e2?.nurImage &&
        e1?.status == e2?.status &&
        e1?.patAssign == e2?.patAssign;
  }

  @override
  int hash(NurseDataRecord? e) => const ListEquality().hash([
        e?.nurseName,
        e?.nurseId,
        e?.docUid,
        e?.uid,
        e?.createdTime,
        e?.nurseRef,
        e?.spec,
        e?.nurImage,
        e?.status,
        e?.patAssign
      ]);

  @override
  bool isValidKey(Object? o) => o is NurseDataRecord;
}
