import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SadsdsRecord extends FirestoreRecord {
  SadsdsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "country" field.
  String? _country;
  String get country => _country ?? '';
  bool hasCountry() => _country != null;

  // "matches" field.
  int? _matches;
  int get matches => _matches ?? 0;
  bool hasMatches() => _matches != null;

  // "wickets" field.
  int? _wickets;
  int get wickets => _wickets ?? 0;
  bool hasWickets() => _wickets != null;

  // "runs" field.
  int? _runs;
  int get runs => _runs ?? 0;
  bool hasRuns() => _runs != null;

  // "batting_style" field.
  String? _battingStyle;
  String get battingStyle => _battingStyle ?? '';
  bool hasBattingStyle() => _battingStyle != null;

  // "bowling_style" field.
  String? _bowlingStyle;
  String get bowlingStyle => _bowlingStyle ?? '';
  bool hasBowlingStyle() => _bowlingStyle != null;

  void _initializeFields() {
    _country = snapshotData['country'] as String?;
    _matches = castToType<int>(snapshotData['matches']);
    _wickets = castToType<int>(snapshotData['wickets']);
    _runs = castToType<int>(snapshotData['runs']);
    _battingStyle = snapshotData['batting_style'] as String?;
    _bowlingStyle = snapshotData['bowling_style'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sadsds');

  static Stream<SadsdsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SadsdsRecord.fromSnapshot(s));

  static Future<SadsdsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SadsdsRecord.fromSnapshot(s));

  static SadsdsRecord fromSnapshot(DocumentSnapshot snapshot) => SadsdsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SadsdsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SadsdsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SadsdsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SadsdsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSadsdsRecordData({
  String? country,
  int? matches,
  int? wickets,
  int? runs,
  String? battingStyle,
  String? bowlingStyle,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'country': country,
      'matches': matches,
      'wickets': wickets,
      'runs': runs,
      'batting_style': battingStyle,
      'bowling_style': bowlingStyle,
    }.withoutNulls,
  );

  return firestoreData;
}

class SadsdsRecordDocumentEquality implements Equality<SadsdsRecord> {
  const SadsdsRecordDocumentEquality();

  @override
  bool equals(SadsdsRecord? e1, SadsdsRecord? e2) {
    return e1?.country == e2?.country &&
        e1?.matches == e2?.matches &&
        e1?.wickets == e2?.wickets &&
        e1?.runs == e2?.runs &&
        e1?.battingStyle == e2?.battingStyle &&
        e1?.bowlingStyle == e2?.bowlingStyle;
  }

  @override
  int hash(SadsdsRecord? e) => const ListEquality().hash([
        e?.country,
        e?.matches,
        e?.wickets,
        e?.runs,
        e?.battingStyle,
        e?.bowlingStyle
      ]);

  @override
  bool isValidKey(Object? o) => o is SadsdsRecord;
}
