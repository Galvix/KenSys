import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DocDataRecord extends FirestoreRecord {
  DocDataRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

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

  // "user_ref" field.
  DocumentReference? _userRef;
  DocumentReference? get userRef => _userRef;
  bool hasUserRef() => _userRef != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _pic = snapshotData['pic'] as String?;
    _userRef = snapshotData['user_ref'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('doc_data');

  static Stream<DocDataRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DocDataRecord.fromSnapshot(s));

  static Future<DocDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DocDataRecord.fromSnapshot(s));

  static DocDataRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DocDataRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DocDataRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DocDataRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DocDataRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DocDataRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDocDataRecordData({
  String? displayName,
  String? uid,
  DateTime? createdTime,
  String? pic,
  DocumentReference? userRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'uid': uid,
      'created_time': createdTime,
      'pic': pic,
      'user_ref': userRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class DocDataRecordDocumentEquality implements Equality<DocDataRecord> {
  const DocDataRecordDocumentEquality();

  @override
  bool equals(DocDataRecord? e1, DocDataRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.pic == e2?.pic &&
        e1?.userRef == e2?.userRef;
  }

  @override
  int hash(DocDataRecord? e) => const ListEquality()
      .hash([e?.displayName, e?.uid, e?.createdTime, e?.pic, e?.userRef]);

  @override
  bool isValidKey(Object? o) => o is DocDataRecord;
}
