import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArtigosRecord extends FirestoreRecord {
  ArtigosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  bool hasCover() => _cover != null;

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "created_by" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  void _initializeFields() {
    _uid = snapshotData['uid'] as String?;
    _title = snapshotData['title'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _cover = snapshotData['cover'] as String?;
    _content = snapshotData['content'] as String?;
    _createdBy = snapshotData['created_by'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('artigos');

  static Stream<ArtigosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArtigosRecord.fromSnapshot(s));

  static Future<ArtigosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArtigosRecord.fromSnapshot(s));

  static ArtigosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArtigosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArtigosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArtigosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArtigosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArtigosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArtigosRecordData({
  String? uid,
  String? title,
  DateTime? createdTime,
  String? cover,
  String? content,
  String? createdBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'uid': uid,
      'title': title,
      'created_time': createdTime,
      'cover': cover,
      'content': content,
      'created_by': createdBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArtigosRecordDocumentEquality implements Equality<ArtigosRecord> {
  const ArtigosRecordDocumentEquality();

  @override
  bool equals(ArtigosRecord? e1, ArtigosRecord? e2) {
    return e1?.uid == e2?.uid &&
        e1?.title == e2?.title &&
        e1?.createdTime == e2?.createdTime &&
        e1?.cover == e2?.cover &&
        e1?.content == e2?.content &&
        e1?.createdBy == e2?.createdBy;
  }

  @override
  int hash(ArtigosRecord? e) => const ListEquality().hash(
      [e?.uid, e?.title, e?.createdTime, e?.cover, e?.content, e?.createdBy]);

  @override
  bool isValidKey(Object? o) => o is ArtigosRecord;
}
