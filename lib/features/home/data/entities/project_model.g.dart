// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// CollectionGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, require_trailing_commas, prefer_single_quotes, prefer_double_quotes, use_super_parameters, duplicate_ignore
// ignore_for_file: type=lint
// ignore_for_file: invalid_use_of_internal_member

class _Sentinel {
  const _Sentinel();
}

const _sentinel = _Sentinel();

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class ProjectCollectionReference
    implements
        ProjectQuery,
        FirestoreCollectionReference<Project, ProjectQuerySnapshot> {
  factory ProjectCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$ProjectCollectionReference;

  static Project fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Project.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Project value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Project> get reference;

  @override
  ProjectDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<ProjectDocumentReference> add(Project value);
}

class _$ProjectCollectionReference extends _$ProjectQuery
    implements ProjectCollectionReference {
  factory _$ProjectCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$ProjectCollectionReference._(
      firestore.collection('projects').withConverter(
            fromFirestore: ProjectCollectionReference.fromFirestore,
            toFirestore: ProjectCollectionReference.toFirestore,
          ),
    );
  }

  _$ProjectCollectionReference._(
    CollectionReference<Project> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<Project> get reference =>
      super.reference as CollectionReference<Project>;

  @override
  ProjectDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return ProjectDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<ProjectDocumentReference> add(Project value) {
    return reference.add(value).then((ref) => ProjectDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProjectCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class ProjectDocumentReference
    extends FirestoreDocumentReference<Project, ProjectDocumentSnapshot> {
  factory ProjectDocumentReference(DocumentReference<Project> reference) =
      _$ProjectDocumentReference;

  DocumentReference<Project> get reference;

  /// A reference to the [ProjectCollectionReference] containing this document.
  ProjectCollectionReference get parent {
    return _$ProjectCollectionReference(reference.firestore);
  }

  @override
  Stream<ProjectDocumentSnapshot> snapshots();

  @override
  Future<ProjectDocumentSnapshot> get([GetOptions? options]);

  @override
  Future<void> delete();

  /// Sets data on the document, overwriting any existing data. If the document
  /// does not yet exist, it will be created.
  ///
  /// If [SetOptions] are provided, the data can be merged into an existing
  /// document instead of overwriting.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  Future<void> set(
    Project model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue creatorIdFieldValue,
    FieldValue nameFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue startDateFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue expectedDeliveryDateFieldValue,
  });

  /// Writes to the document using the transaction API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void transactionSet(
    Transaction transaction,
    Project model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue creatorIdFieldValue,
    FieldValue nameFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue startDateFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue expectedDeliveryDateFieldValue,
  });

  /// Writes to the document using the batch API.
  ///
  /// If the document does not exist yet, it will be created. If you pass
  /// [SetOptions], the provided data can be merged into the existing document.
  ///
  /// Any [FieldValue]s provided will replace the corresponding fields in the
  /// [model] during serialization.
  void batchSet(
    WriteBatch batch,
    Project model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue creatorIdFieldValue,
    FieldValue nameFieldValue,
    FieldValue descriptionFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue startDateFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue expectedDeliveryDateFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String objectId,
    FieldValue objectIdFieldValue,
    String creatorId,
    FieldValue creatorIdFieldValue,
    String name,
    FieldValue nameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    DateTime expectedDeliveryDate,
    FieldValue expectedDeliveryDateFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String objectId,
    FieldValue objectIdFieldValue,
    String creatorId,
    FieldValue creatorIdFieldValue,
    String name,
    FieldValue nameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    DateTime expectedDeliveryDate,
    FieldValue expectedDeliveryDateFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String objectId,
    FieldValue objectIdFieldValue,
    String creatorId,
    FieldValue creatorIdFieldValue,
    String name,
    FieldValue nameFieldValue,
    String description,
    FieldValue descriptionFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime startDate,
    FieldValue startDateFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    DateTime expectedDeliveryDate,
    FieldValue expectedDeliveryDateFieldValue,
  });
}

class _$ProjectDocumentReference
    extends FirestoreDocumentReference<Project, ProjectDocumentSnapshot>
    implements ProjectDocumentReference {
  _$ProjectDocumentReference(this.reference);

  @override
  final DocumentReference<Project> reference;

  /// A reference to the [ProjectCollectionReference] containing this document.
  ProjectCollectionReference get parent {
    return _$ProjectCollectionReference(reference.firestore);
  }

  @override
  Stream<ProjectDocumentSnapshot> snapshots() {
    return reference.snapshots().map(ProjectDocumentSnapshot._);
  }

  @override
  Future<ProjectDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProjectDocumentSnapshot._);
  }

  @override
  Future<ProjectDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(ProjectDocumentSnapshot._);
  }

  Future<void> set(
    Project model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? creatorIdFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? expectedDeliveryDateFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$ProjectFieldMap['objectId']!: objectIdFieldValue,
      if (creatorIdFieldValue != null)
        _$ProjectFieldMap['creatorId']!: creatorIdFieldValue,
      if (nameFieldValue != null) _$ProjectFieldMap['name']!: nameFieldValue,
      if (descriptionFieldValue != null)
        _$ProjectFieldMap['description']!: descriptionFieldValue,
      if (createdAtFieldValue != null)
        _$ProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (startDateFieldValue != null)
        _$ProjectFieldMap['startDate']!: startDateFieldValue,
      if (updatedAtFieldValue != null)
        _$ProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (expectedDeliveryDateFieldValue != null)
        _$ProjectFieldMap['expectedDeliveryDate']!:
            expectedDeliveryDateFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Project model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? creatorIdFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? expectedDeliveryDateFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$ProjectFieldMap['objectId']!: objectIdFieldValue,
      if (creatorIdFieldValue != null)
        _$ProjectFieldMap['creatorId']!: creatorIdFieldValue,
      if (nameFieldValue != null) _$ProjectFieldMap['name']!: nameFieldValue,
      if (descriptionFieldValue != null)
        _$ProjectFieldMap['description']!: descriptionFieldValue,
      if (createdAtFieldValue != null)
        _$ProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (startDateFieldValue != null)
        _$ProjectFieldMap['startDate']!: startDateFieldValue,
      if (updatedAtFieldValue != null)
        _$ProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (expectedDeliveryDateFieldValue != null)
        _$ProjectFieldMap['expectedDeliveryDate']!:
            expectedDeliveryDateFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Project model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? creatorIdFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? descriptionFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? startDateFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? expectedDeliveryDateFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$ProjectFieldMap['objectId']!: objectIdFieldValue,
      if (creatorIdFieldValue != null)
        _$ProjectFieldMap['creatorId']!: creatorIdFieldValue,
      if (nameFieldValue != null) _$ProjectFieldMap['name']!: nameFieldValue,
      if (descriptionFieldValue != null)
        _$ProjectFieldMap['description']!: descriptionFieldValue,
      if (createdAtFieldValue != null)
        _$ProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (startDateFieldValue != null)
        _$ProjectFieldMap['startDate']!: startDateFieldValue,
      if (updatedAtFieldValue != null)
        _$ProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (expectedDeliveryDateFieldValue != null)
        _$ProjectFieldMap['expectedDeliveryDate']!:
            expectedDeliveryDateFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? creatorId = _sentinel,
    FieldValue? creatorIdFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? expectedDeliveryDate = _sentinel,
    FieldValue? expectedDeliveryDateFieldValue,
  }) async {
    assert(
      objectId == _sentinel || objectIdFieldValue == null,
      "Cannot specify both objectId and objectIdFieldValue",
    );
    assert(
      creatorId == _sentinel || creatorIdFieldValue == null,
      "Cannot specify both creatorId and creatorIdFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      expectedDeliveryDate == _sentinel ||
          expectedDeliveryDateFieldValue == null,
      "Cannot specify both expectedDeliveryDate and expectedDeliveryDateFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$ProjectFieldMap['objectId']!:
            _$ProjectPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$ProjectFieldMap['objectId']!: objectIdFieldValue,
      if (creatorId != _sentinel)
        _$ProjectFieldMap['creatorId']!:
            _$ProjectPerFieldToJson.creatorId(creatorId as String),
      if (creatorIdFieldValue != null)
        _$ProjectFieldMap['creatorId']!: creatorIdFieldValue,
      if (name != _sentinel)
        _$ProjectFieldMap['name']!:
            _$ProjectPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$ProjectFieldMap['name']!: nameFieldValue,
      if (description != _sentinel)
        _$ProjectFieldMap['description']!:
            _$ProjectPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$ProjectFieldMap['description']!: descriptionFieldValue,
      if (createdAt != _sentinel)
        _$ProjectFieldMap['createdAt']!:
            _$ProjectPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$ProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (startDate != _sentinel)
        _$ProjectFieldMap['startDate']!:
            _$ProjectPerFieldToJson.startDate(startDate as DateTime),
      if (startDateFieldValue != null)
        _$ProjectFieldMap['startDate']!: startDateFieldValue,
      if (updatedAt != _sentinel)
        _$ProjectFieldMap['updatedAt']!:
            _$ProjectPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$ProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (expectedDeliveryDate != _sentinel)
        _$ProjectFieldMap['expectedDeliveryDate']!: _$ProjectPerFieldToJson
            .expectedDeliveryDate(expectedDeliveryDate as DateTime),
      if (expectedDeliveryDateFieldValue != null)
        _$ProjectFieldMap['expectedDeliveryDate']!:
            expectedDeliveryDateFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? creatorId = _sentinel,
    FieldValue? creatorIdFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? expectedDeliveryDate = _sentinel,
    FieldValue? expectedDeliveryDateFieldValue,
  }) {
    assert(
      objectId == _sentinel || objectIdFieldValue == null,
      "Cannot specify both objectId and objectIdFieldValue",
    );
    assert(
      creatorId == _sentinel || creatorIdFieldValue == null,
      "Cannot specify both creatorId and creatorIdFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      expectedDeliveryDate == _sentinel ||
          expectedDeliveryDateFieldValue == null,
      "Cannot specify both expectedDeliveryDate and expectedDeliveryDateFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$ProjectFieldMap['objectId']!:
            _$ProjectPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$ProjectFieldMap['objectId']!: objectIdFieldValue,
      if (creatorId != _sentinel)
        _$ProjectFieldMap['creatorId']!:
            _$ProjectPerFieldToJson.creatorId(creatorId as String),
      if (creatorIdFieldValue != null)
        _$ProjectFieldMap['creatorId']!: creatorIdFieldValue,
      if (name != _sentinel)
        _$ProjectFieldMap['name']!:
            _$ProjectPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$ProjectFieldMap['name']!: nameFieldValue,
      if (description != _sentinel)
        _$ProjectFieldMap['description']!:
            _$ProjectPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$ProjectFieldMap['description']!: descriptionFieldValue,
      if (createdAt != _sentinel)
        _$ProjectFieldMap['createdAt']!:
            _$ProjectPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$ProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (startDate != _sentinel)
        _$ProjectFieldMap['startDate']!:
            _$ProjectPerFieldToJson.startDate(startDate as DateTime),
      if (startDateFieldValue != null)
        _$ProjectFieldMap['startDate']!: startDateFieldValue,
      if (updatedAt != _sentinel)
        _$ProjectFieldMap['updatedAt']!:
            _$ProjectPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$ProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (expectedDeliveryDate != _sentinel)
        _$ProjectFieldMap['expectedDeliveryDate']!: _$ProjectPerFieldToJson
            .expectedDeliveryDate(expectedDeliveryDate as DateTime),
      if (expectedDeliveryDateFieldValue != null)
        _$ProjectFieldMap['expectedDeliveryDate']!:
            expectedDeliveryDateFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? creatorId = _sentinel,
    FieldValue? creatorIdFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? description = _sentinel,
    FieldValue? descriptionFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? startDate = _sentinel,
    FieldValue? startDateFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? expectedDeliveryDate = _sentinel,
    FieldValue? expectedDeliveryDateFieldValue,
  }) {
    assert(
      objectId == _sentinel || objectIdFieldValue == null,
      "Cannot specify both objectId and objectIdFieldValue",
    );
    assert(
      creatorId == _sentinel || creatorIdFieldValue == null,
      "Cannot specify both creatorId and creatorIdFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      description == _sentinel || descriptionFieldValue == null,
      "Cannot specify both description and descriptionFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      startDate == _sentinel || startDateFieldValue == null,
      "Cannot specify both startDate and startDateFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      expectedDeliveryDate == _sentinel ||
          expectedDeliveryDateFieldValue == null,
      "Cannot specify both expectedDeliveryDate and expectedDeliveryDateFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$ProjectFieldMap['objectId']!:
            _$ProjectPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$ProjectFieldMap['objectId']!: objectIdFieldValue,
      if (creatorId != _sentinel)
        _$ProjectFieldMap['creatorId']!:
            _$ProjectPerFieldToJson.creatorId(creatorId as String),
      if (creatorIdFieldValue != null)
        _$ProjectFieldMap['creatorId']!: creatorIdFieldValue,
      if (name != _sentinel)
        _$ProjectFieldMap['name']!:
            _$ProjectPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$ProjectFieldMap['name']!: nameFieldValue,
      if (description != _sentinel)
        _$ProjectFieldMap['description']!:
            _$ProjectPerFieldToJson.description(description as String),
      if (descriptionFieldValue != null)
        _$ProjectFieldMap['description']!: descriptionFieldValue,
      if (createdAt != _sentinel)
        _$ProjectFieldMap['createdAt']!:
            _$ProjectPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$ProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (startDate != _sentinel)
        _$ProjectFieldMap['startDate']!:
            _$ProjectPerFieldToJson.startDate(startDate as DateTime),
      if (startDateFieldValue != null)
        _$ProjectFieldMap['startDate']!: startDateFieldValue,
      if (updatedAt != _sentinel)
        _$ProjectFieldMap['updatedAt']!:
            _$ProjectPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$ProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (expectedDeliveryDate != _sentinel)
        _$ProjectFieldMap['expectedDeliveryDate']!: _$ProjectPerFieldToJson
            .expectedDeliveryDate(expectedDeliveryDate as DateTime),
      if (expectedDeliveryDateFieldValue != null)
        _$ProjectFieldMap['expectedDeliveryDate']!:
            expectedDeliveryDateFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is ProjectDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class ProjectQuery
    implements QueryReference<Project, ProjectQuerySnapshot> {
  @override
  ProjectQuery limit(int limit);

  @override
  ProjectQuery limitToLast(int limit);

  /// Perform a where query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of where queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.whereFieldPath(FieldPath.fromString('title'), isEqualTo: 'title');
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.whereTitle(isEqualTo: 'title');
  /// ```
  ProjectQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo,
    Object? isNotEqualTo,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  });

  ProjectQuery whereDocumentId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ProjectQuery whereObjectId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ProjectQuery whereCreatorId({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ProjectQuery whereName({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ProjectQuery whereDescription({
    String? isEqualTo,
    String? isNotEqualTo,
    String? isLessThan,
    String? isLessThanOrEqualTo,
    String? isGreaterThan,
    String? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  });

  ProjectQuery whereCreatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  ProjectQuery whereStartDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  ProjectQuery whereUpdatedAt({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  ProjectQuery whereExpectedDeliveryDate({
    DateTime? isEqualTo,
    DateTime? isNotEqualTo,
    DateTime? isLessThan,
    DateTime? isLessThanOrEqualTo,
    DateTime? isGreaterThan,
    DateTime? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  });

  /// Perform an order query based on a [FieldPath].
  ///
  /// This method is considered unsafe as it does check that the field path
  /// maps to a valid property or that parameters such as [isEqualTo] receive
  /// a value of the correct type.
  ///
  /// If possible, instead use the more explicit variant of order queries:
  ///
  /// **AVOID**:
  /// ```dart
  /// collection.orderByFieldPath(
  ///   FieldPath.fromString('title'),
  ///   startAt: 'title',
  /// );
  /// ```
  ///
  /// **PREFER**:
  /// ```dart
  /// collection.orderByTitle(startAt: 'title');
  /// ```
  ProjectQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByObjectId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByCreatorId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByDescription({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByStartDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });

  ProjectQuery orderByExpectedDeliveryDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  });
}

class _$ProjectQuery extends QueryReference<Project, ProjectQuerySnapshot>
    implements ProjectQuery {
  _$ProjectQuery(
    this._collection, {
    required Query<Project> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<ProjectQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(ProjectQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<ProjectQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(ProjectQuerySnapshot._fromQuerySnapshot);
  }

  @override
  ProjectQuery limit(int limit) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery limitToLast(int limit) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereFieldPath(
    Object fieldPath, {
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    Object? arrayContains,
    List<Object?>? arrayContainsAny,
    List<Object?>? whereIn,
    List<Object?>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        fieldPath,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        arrayContains: arrayContains,
        arrayContainsAny: arrayContainsAny,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereDocumentId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        FieldPath.documentId,
        isEqualTo: isEqualTo != _sentinel ? isEqualTo : null,
        isNotEqualTo: isNotEqualTo != _sentinel ? isNotEqualTo : null,
        isLessThan: isLessThan,
        isLessThanOrEqualTo: isLessThanOrEqualTo,
        isGreaterThan: isGreaterThan,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo,
        whereIn: whereIn,
        whereNotIn: whereNotIn,
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereObjectId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['objectId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.objectId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.objectId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ProjectPerFieldToJson.objectId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ProjectPerFieldToJson.objectId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ProjectPerFieldToJson.objectId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ProjectPerFieldToJson.objectId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$ProjectPerFieldToJson.objectId(e)),
        whereNotIn: whereNotIn?.map((e) => _$ProjectPerFieldToJson.objectId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereCreatorId({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['creatorId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.creatorId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.creatorId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ProjectPerFieldToJson.creatorId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ProjectPerFieldToJson.creatorId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ProjectPerFieldToJson.creatorId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ProjectPerFieldToJson
                .creatorId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$ProjectPerFieldToJson.creatorId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ProjectPerFieldToJson.creatorId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereName({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ProjectPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ProjectPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ProjectPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ProjectPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$ProjectPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$ProjectPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereDescription({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<String>? whereIn,
    List<String>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['description']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.description(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.description(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$ProjectPerFieldToJson.description(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ProjectPerFieldToJson.description(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ProjectPerFieldToJson.description(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ProjectPerFieldToJson
                .description(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$ProjectPerFieldToJson.description(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ProjectPerFieldToJson.description(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereCreatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ProjectPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ProjectPerFieldToJson.createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ProjectPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ProjectPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$ProjectPerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ProjectPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereStartDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['startDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.startDate(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.startDate(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ProjectPerFieldToJson.startDate(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ProjectPerFieldToJson.startDate(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ProjectPerFieldToJson.startDate(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ProjectPerFieldToJson
                .startDate(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$ProjectPerFieldToJson.startDate(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ProjectPerFieldToJson.startDate(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereUpdatedAt({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.updatedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ProjectPerFieldToJson.updatedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ProjectPerFieldToJson.updatedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ProjectPerFieldToJson.updatedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ProjectPerFieldToJson.updatedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ProjectPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$ProjectPerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$ProjectPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery whereExpectedDeliveryDate({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<DateTime>? whereIn,
    List<DateTime>? whereNotIn,
    bool? isNull,
  }) {
    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$ProjectFieldMap['expectedDeliveryDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$ProjectPerFieldToJson
                .expectedDeliveryDate(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$ProjectPerFieldToJson
                .expectedDeliveryDate(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$ProjectPerFieldToJson
                .expectedDeliveryDate(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$ProjectPerFieldToJson
                .expectedDeliveryDate(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$ProjectPerFieldToJson
                .expectedDeliveryDate(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$ProjectPerFieldToJson
                .expectedDeliveryDate(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn
            ?.map((e) => _$ProjectPerFieldToJson.expectedDeliveryDate(e)),
        whereNotIn: whereNotIn
            ?.map((e) => _$ProjectPerFieldToJson.expectedDeliveryDate(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  ProjectQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query =
        $referenceWithoutCursor.orderBy(fieldPath, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ProjectQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(FieldPath.documentId,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ProjectQuery orderByObjectId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['objectId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ProjectQuery orderByCreatorId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['creatorId']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ProjectQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$ProjectFieldMap['name']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ProjectQuery orderByDescription({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['description']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ProjectQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['createdAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ProjectQuery orderByStartDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['startDate']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ProjectQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$ProjectFieldMap['updatedAt']!, descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  ProjectQuery orderByExpectedDeliveryDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    ProjectDocumentSnapshot? startAtDocument,
    ProjectDocumentSnapshot? endAtDocument,
    ProjectDocumentSnapshot? endBeforeDocument,
    ProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$ProjectFieldMap['expectedDeliveryDate']!,
        descending: descending);
    var queryCursor = $queryCursor;

    if (startAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAt: const [],
        startAtDocumentSnapshot: startAtDocument.snapshot,
      );
    }
    if (startAfterDocument != null) {
      queryCursor = queryCursor.copyWith(
        startAfter: const [],
        startAfterDocumentSnapshot: startAfterDocument.snapshot,
      );
    }
    if (endAtDocument != null) {
      queryCursor = queryCursor.copyWith(
        endAt: const [],
        endAtDocumentSnapshot: endAtDocument.snapshot,
      );
    }
    if (endBeforeDocument != null) {
      queryCursor = queryCursor.copyWith(
        endBefore: const [],
        endBeforeDocumentSnapshot: endBeforeDocument.snapshot,
      );
    }

    if (startAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAt: [...queryCursor.startAt, startAt],
        startAtDocumentSnapshot: null,
      );
    }
    if (startAfter != _sentinel) {
      queryCursor = queryCursor.copyWith(
        startAfter: [...queryCursor.startAfter, startAfter],
        startAfterDocumentSnapshot: null,
      );
    }
    if (endAt != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endAt: [...queryCursor.endAt, endAt],
        endAtDocumentSnapshot: null,
      );
    }
    if (endBefore != _sentinel) {
      queryCursor = queryCursor.copyWith(
        endBefore: [...queryCursor.endBefore, endBefore],
        endBeforeDocumentSnapshot: null,
      );
    }

    return _$ProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$ProjectQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class ProjectDocumentSnapshot extends FirestoreDocumentSnapshot<Project> {
  ProjectDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Project> snapshot;

  @override
  ProjectDocumentReference get reference {
    return ProjectDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Project? data;
}

class ProjectQuerySnapshot
    extends FirestoreQuerySnapshot<Project, ProjectQueryDocumentSnapshot> {
  ProjectQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory ProjectQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Project> snapshot,
  ) {
    final docs = snapshot.docs.map(ProjectQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        ProjectDocumentSnapshot._,
      );
    }).toList();

    return ProjectQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<ProjectDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    ProjectDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<ProjectDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Project> snapshot;

  @override
  final List<ProjectQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<ProjectDocumentSnapshot>> docChanges;
}

class ProjectQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Project>
    implements ProjectDocumentSnapshot {
  ProjectQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Project> snapshot;

  @override
  final Project data;

  @override
  ProjectDocumentReference get reference {
    return ProjectDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Project _$ProjectFromJson(Map<String, dynamic> json) => Project(
      id: json['id'] as String,
      objectId: json['objectId'] as String,
      name: json['name'] as String,
      description: json['description'] as String,
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['createdAt'] as Timestamp),
      updatedAt: const FirestoreDateTimeConverter()
          .fromJson(json['updatedAt'] as Timestamp),
      creatorId: json['creatorId'] as String,
      expectedDeliveryDate: const FirestoreDateTimeConverter()
          .fromJson(json['expectedDeliveryDate'] as Timestamp),
      startDate: const FirestoreDateTimeConverter()
          .fromJson(json['startDate'] as Timestamp),
    );

const _$ProjectFieldMap = <String, String>{
  'id': 'id',
  'objectId': 'objectId',
  'creatorId': 'creatorId',
  'name': 'name',
  'description': 'description',
  'createdAt': 'createdAt',
  'startDate': 'startDate',
  'updatedAt': 'updatedAt',
  'expectedDeliveryDate': 'expectedDeliveryDate',
};

// ignore: unused_element
abstract class _$ProjectPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? objectId(String instance) => instance;
  // ignore: unused_element
  static Object? creatorId(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? startDate(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? expectedDeliveryDate(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
}

Map<String, dynamic> _$ProjectToJson(Project instance) => <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'creatorId': instance.creatorId,
      'name': instance.name,
      'description': instance.description,
      'createdAt':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
      'startDate':
          const FirestoreDateTimeConverter().toJson(instance.startDate),
      'updatedAt':
          const FirestoreDateTimeConverter().toJson(instance.updatedAt),
      'expectedDeliveryDate': const FirestoreDateTimeConverter()
          .toJson(instance.expectedDeliveryDate),
    };
