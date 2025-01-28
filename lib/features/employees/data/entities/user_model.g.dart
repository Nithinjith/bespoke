// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

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
abstract class UserCollectionReference
    implements
        UserQuery,
        FirestoreCollectionReference<User, UserQuerySnapshot> {
  factory UserCollectionReference([
    FirebaseFirestore? firestore,
  ]) = _$UserCollectionReference;

  static User fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return User.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    User value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<User> get reference;

  @override
  UserDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserDocumentReference> add(User value);
}

class _$UserCollectionReference extends _$UserQuery
    implements UserCollectionReference {
  factory _$UserCollectionReference([FirebaseFirestore? firestore]) {
    firestore ??= FirebaseFirestore.instance;

    return _$UserCollectionReference._(
      firestore.collection('users').withConverter(
            fromFirestore: UserCollectionReference.fromFirestore,
            toFirestore: UserCollectionReference.toFirestore,
          ),
    );
  }

  _$UserCollectionReference._(
    CollectionReference<User> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  String get path => reference.path;

  @override
  CollectionReference<User> get reference =>
      super.reference as CollectionReference<User>;

  @override
  UserDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserDocumentReference> add(User value) {
    return reference.add(value).then((ref) => UserDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot> {
  factory UserDocumentReference(DocumentReference<User> reference) =
      _$UserDocumentReference;

  DocumentReference<User> get reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  late final WorkStatusCollectionReference workStatus =
      _$WorkStatusCollectionReference(
    reference,
  );

  @override
  Stream<UserDocumentSnapshot> snapshots();

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]);

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
    User model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue phoneFieldValue,
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
    User model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue phoneFieldValue,
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
    User model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue nameFieldValue,
    FieldValue emailFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue phoneFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String objectId,
    FieldValue objectIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    int phone,
    FieldValue phoneFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String objectId,
    FieldValue objectIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    int phone,
    FieldValue phoneFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String objectId,
    FieldValue objectIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    String name,
    FieldValue nameFieldValue,
    String email,
    FieldValue emailFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    int phone,
    FieldValue phoneFieldValue,
  });
}

class _$UserDocumentReference
    extends FirestoreDocumentReference<User, UserDocumentSnapshot>
    implements UserDocumentReference {
  _$UserDocumentReference(this.reference);

  @override
  final DocumentReference<User> reference;

  /// A reference to the [UserCollectionReference] containing this document.
  UserCollectionReference get parent {
    return _$UserCollectionReference(reference.firestore);
  }

  late final WorkStatusCollectionReference workStatus =
      _$WorkStatusCollectionReference(
    reference,
  );

  @override
  Stream<UserDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserDocumentSnapshot._);
  }

  @override
  Future<UserDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserDocumentSnapshot._);
  }

  Future<void> set(
    User model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? phoneFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$UserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$UserFieldMap['createdAt']!: createdAtFieldValue,
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
      if (updatedAtFieldValue != null)
        _$UserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (phoneFieldValue != null) _$UserFieldMap['phone']!: phoneFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    User model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? phoneFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$UserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$UserFieldMap['createdAt']!: createdAtFieldValue,
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
      if (updatedAtFieldValue != null)
        _$UserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (phoneFieldValue != null) _$UserFieldMap['phone']!: phoneFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    User model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? nameFieldValue,
    FieldValue? emailFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? phoneFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$UserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$UserFieldMap['createdAt']!: createdAtFieldValue,
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
      if (updatedAtFieldValue != null)
        _$UserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (phoneFieldValue != null) _$UserFieldMap['phone']!: phoneFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
  }) async {
    assert(
      objectId == _sentinel || objectIdFieldValue == null,
      "Cannot specify both objectId and objectIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$UserFieldMap['objectId']!:
            _$UserPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$UserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$UserFieldMap['createdAt']!:
            _$UserPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$UserFieldMap['createdAt']!: createdAtFieldValue,
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
      if (updatedAt != _sentinel)
        _$UserFieldMap['updatedAt']!:
            _$UserPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$UserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (phone != _sentinel)
        _$UserFieldMap['phone']!: _$UserPerFieldToJson.phone(phone as int),
      if (phoneFieldValue != null) _$UserFieldMap['phone']!: phoneFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
  }) {
    assert(
      objectId == _sentinel || objectIdFieldValue == null,
      "Cannot specify both objectId and objectIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$UserFieldMap['objectId']!:
            _$UserPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$UserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$UserFieldMap['createdAt']!:
            _$UserPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$UserFieldMap['createdAt']!: createdAtFieldValue,
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
      if (updatedAt != _sentinel)
        _$UserFieldMap['updatedAt']!:
            _$UserPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$UserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (phone != _sentinel)
        _$UserFieldMap['phone']!: _$UserPerFieldToJson.phone(phone as int),
      if (phoneFieldValue != null) _$UserFieldMap['phone']!: phoneFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? name = _sentinel,
    FieldValue? nameFieldValue,
    Object? email = _sentinel,
    FieldValue? emailFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? phone = _sentinel,
    FieldValue? phoneFieldValue,
  }) {
    assert(
      objectId == _sentinel || objectIdFieldValue == null,
      "Cannot specify both objectId and objectIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      name == _sentinel || nameFieldValue == null,
      "Cannot specify both name and nameFieldValue",
    );
    assert(
      email == _sentinel || emailFieldValue == null,
      "Cannot specify both email and emailFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      phone == _sentinel || phoneFieldValue == null,
      "Cannot specify both phone and phoneFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$UserFieldMap['objectId']!:
            _$UserPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$UserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$UserFieldMap['createdAt']!:
            _$UserPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$UserFieldMap['createdAt']!: createdAtFieldValue,
      if (name != _sentinel)
        _$UserFieldMap['name']!: _$UserPerFieldToJson.name(name as String),
      if (nameFieldValue != null) _$UserFieldMap['name']!: nameFieldValue,
      if (email != _sentinel)
        _$UserFieldMap['email']!: _$UserPerFieldToJson.email(email as String),
      if (emailFieldValue != null) _$UserFieldMap['email']!: emailFieldValue,
      if (updatedAt != _sentinel)
        _$UserFieldMap['updatedAt']!:
            _$UserPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$UserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (phone != _sentinel)
        _$UserFieldMap['phone']!: _$UserPerFieldToJson.phone(phone as int),
      if (phoneFieldValue != null) _$UserFieldMap['phone']!: phoneFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserQuery implements QueryReference<User, UserQuerySnapshot> {
  @override
  UserQuery limit(int limit);

  @override
  UserQuery limitToLast(int limit);

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
  UserQuery whereFieldPath(
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

  UserQuery whereDocumentId({
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

  UserQuery whereObjectId({
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

  UserQuery whereCreatedAt({
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

  UserQuery whereName({
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

  UserQuery whereEmail({
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

  UserQuery whereUpdatedAt({
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

  UserQuery wherePhone({
    int? isEqualTo,
    int? isNotEqualTo,
    int? isLessThan,
    int? isLessThanOrEqualTo,
    int? isGreaterThan,
    int? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
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
  UserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByObjectId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByName({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByEmail({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });

  UserQuery orderByPhone({
    bool descending = false,
    int startAt,
    int startAfter,
    int endAt,
    int endBefore,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  });
}

class _$UserQuery extends QueryReference<User, UserQuerySnapshot>
    implements UserQuery {
  _$UserQuery(
    this._collection, {
    required Query<User> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserQuery limit(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery limitToLast(int limit) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereFieldPath(
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
    return _$UserQuery(
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
  UserQuery whereDocumentId({
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
    return _$UserQuery(
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
  UserQuery whereObjectId({
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
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['objectId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.objectId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.objectId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.objectId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.objectId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.objectId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.objectId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.objectId(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.objectId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereCreatedAt({
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
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.createdAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereName({
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
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['name']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.name(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.name(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.name(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.name(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.name(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.name(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.name(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.name(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereEmail({
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
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['email']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.email(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.email(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.email(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.email(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.email(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.email(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery whereUpdatedAt({
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
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.updatedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.updatedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.updatedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.updatedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.updatedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.updatedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.updatedAt(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery wherePhone({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<int>? whereIn,
    List<int>? whereNotIn,
    bool? isNull,
  }) {
    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserFieldMap['phone']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserPerFieldToJson.phone(isEqualTo as int)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserPerFieldToJson.phone(isNotEqualTo as int)
            : null,
        isLessThan: isLessThan != null
            ? _$UserPerFieldToJson.phone(isLessThan as int)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserPerFieldToJson.phone(isLessThanOrEqualTo as int)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserPerFieldToJson.phone(isGreaterThan as int)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserPerFieldToJson.phone(isGreaterThanOrEqualTo as int)
            : null,
        whereIn: whereIn?.map((e) => _$UserPerFieldToJson.phone(e)),
        whereNotIn: whereNotIn?.map((e) => _$UserPerFieldToJson.phone(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
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

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
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

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByObjectId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['objectId']!,
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

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['createdAt']!,
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

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByName({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['name']!,
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

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByEmail({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['email']!,
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

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['updatedAt']!,
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

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserQuery orderByPhone({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserDocumentSnapshot? startAtDocument,
    UserDocumentSnapshot? endAtDocument,
    UserDocumentSnapshot? endBeforeDocument,
    UserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$UserFieldMap['phone']!,
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

    return _$UserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserDocumentSnapshot extends FirestoreDocumentSnapshot<User> {
  UserDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<User> snapshot;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final User? data;
}

class UserQuerySnapshot
    extends FirestoreQuerySnapshot<User, UserQueryDocumentSnapshot> {
  UserQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UserQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<User> snapshot,
  ) {
    final docs = snapshot.docs.map(UserQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UserDocumentSnapshot._,
      );
    }).toList();

    return UserQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UserDocumentSnapshot> _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<User> snapshot;

  @override
  final List<UserQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserDocumentSnapshot>> docChanges;
}

class UserQueryDocumentSnapshot extends FirestoreQueryDocumentSnapshot<User>
    implements UserDocumentSnapshot {
  UserQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<User> snapshot;

  @override
  final User data;

  @override
  UserDocumentReference get reference {
    return UserDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class WorkStatusCollectionReference
    implements
        WorkStatusQuery,
        FirestoreCollectionReference<WorkStatus, WorkStatusQuerySnapshot> {
  factory WorkStatusCollectionReference(
    DocumentReference<User> parent,
  ) = _$WorkStatusCollectionReference;

  static WorkStatus fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return WorkStatus.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    WorkStatus value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<WorkStatus> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  WorkStatusDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<WorkStatusDocumentReference> add(WorkStatus value);
}

class _$WorkStatusCollectionReference extends _$WorkStatusQuery
    implements WorkStatusCollectionReference {
  factory _$WorkStatusCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$WorkStatusCollectionReference._(
      UserDocumentReference(parent),
      parent.collection('work_status').withConverter(
            fromFirestore: WorkStatusCollectionReference.fromFirestore,
            toFirestore: WorkStatusCollectionReference.toFirestore,
          ),
    );
  }

  _$WorkStatusCollectionReference._(
    this.parent,
    CollectionReference<WorkStatus> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<WorkStatus> get reference =>
      super.reference as CollectionReference<WorkStatus>;

  @override
  WorkStatusDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return WorkStatusDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<WorkStatusDocumentReference> add(WorkStatus value) {
    return reference.add(value).then((ref) => WorkStatusDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$WorkStatusCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class WorkStatusDocumentReference
    extends FirestoreDocumentReference<WorkStatus, WorkStatusDocumentSnapshot> {
  factory WorkStatusDocumentReference(DocumentReference<WorkStatus> reference) =
      _$WorkStatusDocumentReference;

  DocumentReference<WorkStatus> get reference;

  /// A reference to the [WorkStatusCollectionReference] containing this document.
  WorkStatusCollectionReference get parent {
    return _$WorkStatusCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<WorkStatusDocumentSnapshot> snapshots();

  @override
  Future<WorkStatusDocumentSnapshot> get([GetOptions? options]);

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
    WorkStatus model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue workDateFieldValue,
    FieldValue hoursWorkedFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
    FieldValue projectIdFieldValue,
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
    WorkStatus model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue workDateFieldValue,
    FieldValue hoursWorkedFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
    FieldValue projectIdFieldValue,
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
    WorkStatus model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue workDateFieldValue,
    FieldValue hoursWorkedFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
    FieldValue projectIdFieldValue,
  });

  /// Updates data on the document. Data will be merged with any existing
  /// document data.
  ///
  /// If no document exists yet, the update will fail.
  Future<void> update({
    String objectId,
    FieldValue objectIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime workDate,
    FieldValue workDateFieldValue,
    double hoursWorked,
    FieldValue hoursWorkedFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String projectId,
    FieldValue projectIdFieldValue,
  });

  /// Updates fields in the current document using the transaction API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void transactionUpdate(
    Transaction transaction, {
    String objectId,
    FieldValue objectIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime workDate,
    FieldValue workDateFieldValue,
    double hoursWorked,
    FieldValue hoursWorkedFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String projectId,
    FieldValue projectIdFieldValue,
  });

  /// Updates fields in the current document using the batch API.
  ///
  /// The update will fail if applied to a document that does not exist.
  void batchUpdate(
    WriteBatch batch, {
    String objectId,
    FieldValue objectIdFieldValue,
    DateTime createdAt,
    FieldValue createdAtFieldValue,
    DateTime workDate,
    FieldValue workDateFieldValue,
    double hoursWorked,
    FieldValue hoursWorkedFieldValue,
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String projectId,
    FieldValue projectIdFieldValue,
  });
}

class _$WorkStatusDocumentReference
    extends FirestoreDocumentReference<WorkStatus, WorkStatusDocumentSnapshot>
    implements WorkStatusDocumentReference {
  _$WorkStatusDocumentReference(this.reference);

  @override
  final DocumentReference<WorkStatus> reference;

  /// A reference to the [WorkStatusCollectionReference] containing this document.
  WorkStatusCollectionReference get parent {
    return _$WorkStatusCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<WorkStatusDocumentSnapshot> snapshots() {
    return reference.snapshots().map(WorkStatusDocumentSnapshot._);
  }

  @override
  Future<WorkStatusDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(WorkStatusDocumentSnapshot._);
  }

  @override
  Future<WorkStatusDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(WorkStatusDocumentSnapshot._);
  }

  Future<void> set(
    WorkStatus model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? workDateFieldValue,
    FieldValue? hoursWorkedFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
    FieldValue? projectIdFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$WorkStatusFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$WorkStatusFieldMap['createdAt']!: createdAtFieldValue,
      if (workDateFieldValue != null)
        _$WorkStatusFieldMap['workDate']!: workDateFieldValue,
      if (hoursWorkedFieldValue != null)
        _$WorkStatusFieldMap['hoursWorked']!: hoursWorkedFieldValue,
      if (updatedAtFieldValue != null)
        _$WorkStatusFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$WorkStatusFieldMap['userId']!: userIdFieldValue,
      if (projectIdFieldValue != null)
        _$WorkStatusFieldMap['projectId']!: projectIdFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    WorkStatus model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? workDateFieldValue,
    FieldValue? hoursWorkedFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
    FieldValue? projectIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$WorkStatusFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$WorkStatusFieldMap['createdAt']!: createdAtFieldValue,
      if (workDateFieldValue != null)
        _$WorkStatusFieldMap['workDate']!: workDateFieldValue,
      if (hoursWorkedFieldValue != null)
        _$WorkStatusFieldMap['hoursWorked']!: hoursWorkedFieldValue,
      if (updatedAtFieldValue != null)
        _$WorkStatusFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$WorkStatusFieldMap['userId']!: userIdFieldValue,
      if (projectIdFieldValue != null)
        _$WorkStatusFieldMap['projectId']!: projectIdFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    WorkStatus model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? workDateFieldValue,
    FieldValue? hoursWorkedFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
    FieldValue? projectIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$WorkStatusFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$WorkStatusFieldMap['createdAt']!: createdAtFieldValue,
      if (workDateFieldValue != null)
        _$WorkStatusFieldMap['workDate']!: workDateFieldValue,
      if (hoursWorkedFieldValue != null)
        _$WorkStatusFieldMap['hoursWorked']!: hoursWorkedFieldValue,
      if (updatedAtFieldValue != null)
        _$WorkStatusFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$WorkStatusFieldMap['userId']!: userIdFieldValue,
      if (projectIdFieldValue != null)
        _$WorkStatusFieldMap['projectId']!: projectIdFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? workDate = _sentinel,
    FieldValue? workDateFieldValue,
    Object? hoursWorked = _sentinel,
    FieldValue? hoursWorkedFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? projectId = _sentinel,
    FieldValue? projectIdFieldValue,
  }) async {
    assert(
      objectId == _sentinel || objectIdFieldValue == null,
      "Cannot specify both objectId and objectIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      workDate == _sentinel || workDateFieldValue == null,
      "Cannot specify both workDate and workDateFieldValue",
    );
    assert(
      hoursWorked == _sentinel || hoursWorkedFieldValue == null,
      "Cannot specify both hoursWorked and hoursWorkedFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      projectId == _sentinel || projectIdFieldValue == null,
      "Cannot specify both projectId and projectIdFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$WorkStatusFieldMap['objectId']!:
            _$WorkStatusPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$WorkStatusFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$WorkStatusFieldMap['createdAt']!:
            _$WorkStatusPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$WorkStatusFieldMap['createdAt']!: createdAtFieldValue,
      if (workDate != _sentinel)
        _$WorkStatusFieldMap['workDate']!:
            _$WorkStatusPerFieldToJson.workDate(workDate as DateTime),
      if (workDateFieldValue != null)
        _$WorkStatusFieldMap['workDate']!: workDateFieldValue,
      if (hoursWorked != _sentinel)
        _$WorkStatusFieldMap['hoursWorked']!:
            _$WorkStatusPerFieldToJson.hoursWorked(hoursWorked as double),
      if (hoursWorkedFieldValue != null)
        _$WorkStatusFieldMap['hoursWorked']!: hoursWorkedFieldValue,
      if (updatedAt != _sentinel)
        _$WorkStatusFieldMap['updatedAt']!:
            _$WorkStatusPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$WorkStatusFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$WorkStatusFieldMap['userId']!:
            _$WorkStatusPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$WorkStatusFieldMap['userId']!: userIdFieldValue,
      if (projectId != _sentinel)
        _$WorkStatusFieldMap['projectId']!:
            _$WorkStatusPerFieldToJson.projectId(projectId as String),
      if (projectIdFieldValue != null)
        _$WorkStatusFieldMap['projectId']!: projectIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? workDate = _sentinel,
    FieldValue? workDateFieldValue,
    Object? hoursWorked = _sentinel,
    FieldValue? hoursWorkedFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? projectId = _sentinel,
    FieldValue? projectIdFieldValue,
  }) {
    assert(
      objectId == _sentinel || objectIdFieldValue == null,
      "Cannot specify both objectId and objectIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      workDate == _sentinel || workDateFieldValue == null,
      "Cannot specify both workDate and workDateFieldValue",
    );
    assert(
      hoursWorked == _sentinel || hoursWorkedFieldValue == null,
      "Cannot specify both hoursWorked and hoursWorkedFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      projectId == _sentinel || projectIdFieldValue == null,
      "Cannot specify both projectId and projectIdFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$WorkStatusFieldMap['objectId']!:
            _$WorkStatusPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$WorkStatusFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$WorkStatusFieldMap['createdAt']!:
            _$WorkStatusPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$WorkStatusFieldMap['createdAt']!: createdAtFieldValue,
      if (workDate != _sentinel)
        _$WorkStatusFieldMap['workDate']!:
            _$WorkStatusPerFieldToJson.workDate(workDate as DateTime),
      if (workDateFieldValue != null)
        _$WorkStatusFieldMap['workDate']!: workDateFieldValue,
      if (hoursWorked != _sentinel)
        _$WorkStatusFieldMap['hoursWorked']!:
            _$WorkStatusPerFieldToJson.hoursWorked(hoursWorked as double),
      if (hoursWorkedFieldValue != null)
        _$WorkStatusFieldMap['hoursWorked']!: hoursWorkedFieldValue,
      if (updatedAt != _sentinel)
        _$WorkStatusFieldMap['updatedAt']!:
            _$WorkStatusPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$WorkStatusFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$WorkStatusFieldMap['userId']!:
            _$WorkStatusPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$WorkStatusFieldMap['userId']!: userIdFieldValue,
      if (projectId != _sentinel)
        _$WorkStatusFieldMap['projectId']!:
            _$WorkStatusPerFieldToJson.projectId(projectId as String),
      if (projectIdFieldValue != null)
        _$WorkStatusFieldMap['projectId']!: projectIdFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? workDate = _sentinel,
    FieldValue? workDateFieldValue,
    Object? hoursWorked = _sentinel,
    FieldValue? hoursWorkedFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? projectId = _sentinel,
    FieldValue? projectIdFieldValue,
  }) {
    assert(
      objectId == _sentinel || objectIdFieldValue == null,
      "Cannot specify both objectId and objectIdFieldValue",
    );
    assert(
      createdAt == _sentinel || createdAtFieldValue == null,
      "Cannot specify both createdAt and createdAtFieldValue",
    );
    assert(
      workDate == _sentinel || workDateFieldValue == null,
      "Cannot specify both workDate and workDateFieldValue",
    );
    assert(
      hoursWorked == _sentinel || hoursWorkedFieldValue == null,
      "Cannot specify both hoursWorked and hoursWorkedFieldValue",
    );
    assert(
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    assert(
      projectId == _sentinel || projectIdFieldValue == null,
      "Cannot specify both projectId and projectIdFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$WorkStatusFieldMap['objectId']!:
            _$WorkStatusPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$WorkStatusFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$WorkStatusFieldMap['createdAt']!:
            _$WorkStatusPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$WorkStatusFieldMap['createdAt']!: createdAtFieldValue,
      if (workDate != _sentinel)
        _$WorkStatusFieldMap['workDate']!:
            _$WorkStatusPerFieldToJson.workDate(workDate as DateTime),
      if (workDateFieldValue != null)
        _$WorkStatusFieldMap['workDate']!: workDateFieldValue,
      if (hoursWorked != _sentinel)
        _$WorkStatusFieldMap['hoursWorked']!:
            _$WorkStatusPerFieldToJson.hoursWorked(hoursWorked as double),
      if (hoursWorkedFieldValue != null)
        _$WorkStatusFieldMap['hoursWorked']!: hoursWorkedFieldValue,
      if (updatedAt != _sentinel)
        _$WorkStatusFieldMap['updatedAt']!:
            _$WorkStatusPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$WorkStatusFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$WorkStatusFieldMap['userId']!:
            _$WorkStatusPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$WorkStatusFieldMap['userId']!: userIdFieldValue,
      if (projectId != _sentinel)
        _$WorkStatusFieldMap['projectId']!:
            _$WorkStatusPerFieldToJson.projectId(projectId as String),
      if (projectIdFieldValue != null)
        _$WorkStatusFieldMap['projectId']!: projectIdFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is WorkStatusDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class WorkStatusQuery
    implements QueryReference<WorkStatus, WorkStatusQuerySnapshot> {
  @override
  WorkStatusQuery limit(int limit);

  @override
  WorkStatusQuery limitToLast(int limit);

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
  WorkStatusQuery whereFieldPath(
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

  WorkStatusQuery whereDocumentId({
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

  WorkStatusQuery whereObjectId({
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

  WorkStatusQuery whereCreatedAt({
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

  WorkStatusQuery whereWorkDate({
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

  WorkStatusQuery whereHoursWorked({
    double? isEqualTo,
    double? isNotEqualTo,
    double? isLessThan,
    double? isLessThanOrEqualTo,
    double? isGreaterThan,
    double? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  });

  WorkStatusQuery whereUpdatedAt({
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

  WorkStatusQuery whereUserId({
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

  WorkStatusQuery whereProjectId({
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
  WorkStatusQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  });

  WorkStatusQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  });

  WorkStatusQuery orderByObjectId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  });

  WorkStatusQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  });

  WorkStatusQuery orderByWorkDate({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  });

  WorkStatusQuery orderByHoursWorked({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  });

  WorkStatusQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  });

  WorkStatusQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  });

  WorkStatusQuery orderByProjectId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  });
}

class _$WorkStatusQuery
    extends QueryReference<WorkStatus, WorkStatusQuerySnapshot>
    implements WorkStatusQuery {
  _$WorkStatusQuery(
    this._collection, {
    required Query<WorkStatus> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<WorkStatusQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(WorkStatusQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<WorkStatusQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(WorkStatusQuerySnapshot._fromQuerySnapshot);
  }

  @override
  WorkStatusQuery limit(int limit) {
    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WorkStatusQuery limitToLast(int limit) {
    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WorkStatusQuery whereFieldPath(
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
    return _$WorkStatusQuery(
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
  WorkStatusQuery whereDocumentId({
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
    return _$WorkStatusQuery(
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
  WorkStatusQuery whereObjectId({
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
    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WorkStatusFieldMap['objectId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.objectId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.objectId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$WorkStatusPerFieldToJson.objectId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson.objectId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WorkStatusPerFieldToJson.objectId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .objectId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$WorkStatusPerFieldToJson.objectId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$WorkStatusPerFieldToJson.objectId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WorkStatusQuery whereCreatedAt({
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
    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WorkStatusFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$WorkStatusPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WorkStatusPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$WorkStatusPerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$WorkStatusPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WorkStatusQuery whereWorkDate({
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
    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WorkStatusFieldMap['workDate']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.workDate(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.workDate(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$WorkStatusPerFieldToJson.workDate(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .workDate(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WorkStatusPerFieldToJson.workDate(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .workDate(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$WorkStatusPerFieldToJson.workDate(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$WorkStatusPerFieldToJson.workDate(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WorkStatusQuery whereHoursWorked({
    Object? isEqualTo = _sentinel,
    Object? isNotEqualTo = _sentinel,
    Object? isLessThan,
    Object? isLessThanOrEqualTo,
    Object? isGreaterThan,
    Object? isGreaterThanOrEqualTo,
    List<double>? whereIn,
    List<double>? whereNotIn,
    bool? isNull,
  }) {
    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WorkStatusFieldMap['hoursWorked']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.hoursWorked(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.hoursWorked(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$WorkStatusPerFieldToJson.hoursWorked(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .hoursWorked(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WorkStatusPerFieldToJson.hoursWorked(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .hoursWorked(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$WorkStatusPerFieldToJson.hoursWorked(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$WorkStatusPerFieldToJson.hoursWorked(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WorkStatusQuery whereUpdatedAt({
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
    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WorkStatusFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.updatedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.updatedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$WorkStatusPerFieldToJson.updatedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WorkStatusPerFieldToJson.updatedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$WorkStatusPerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$WorkStatusPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WorkStatusQuery whereUserId({
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
    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WorkStatusFieldMap['userId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.userId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.userId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$WorkStatusPerFieldToJson.userId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson.userId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WorkStatusPerFieldToJson.userId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .userId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$WorkStatusPerFieldToJson.userId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$WorkStatusPerFieldToJson.userId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WorkStatusQuery whereProjectId({
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
    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$WorkStatusFieldMap['projectId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.projectId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$WorkStatusPerFieldToJson.projectId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$WorkStatusPerFieldToJson.projectId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .projectId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$WorkStatusPerFieldToJson.projectId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$WorkStatusPerFieldToJson
                .projectId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$WorkStatusPerFieldToJson.projectId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$WorkStatusPerFieldToJson.projectId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  WorkStatusQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
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

    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  WorkStatusQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
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

    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  WorkStatusQuery orderByObjectId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$WorkStatusFieldMap['objectId']!, descending: descending);
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

    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  WorkStatusQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$WorkStatusFieldMap['createdAt']!, descending: descending);
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

    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  WorkStatusQuery orderByWorkDate({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$WorkStatusFieldMap['workDate']!, descending: descending);
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

    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  WorkStatusQuery orderByHoursWorked({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$WorkStatusFieldMap['hoursWorked']!, descending: descending);
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

    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  WorkStatusQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$WorkStatusFieldMap['updatedAt']!, descending: descending);
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

    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  WorkStatusQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$WorkStatusFieldMap['userId']!, descending: descending);
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

    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  WorkStatusQuery orderByProjectId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    WorkStatusDocumentSnapshot? startAtDocument,
    WorkStatusDocumentSnapshot? endAtDocument,
    WorkStatusDocumentSnapshot? endBeforeDocument,
    WorkStatusDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$WorkStatusFieldMap['projectId']!, descending: descending);
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

    return _$WorkStatusQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$WorkStatusQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class WorkStatusDocumentSnapshot extends FirestoreDocumentSnapshot<WorkStatus> {
  WorkStatusDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<WorkStatus> snapshot;

  @override
  WorkStatusDocumentReference get reference {
    return WorkStatusDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final WorkStatus? data;
}

class WorkStatusQuerySnapshot extends FirestoreQuerySnapshot<WorkStatus,
    WorkStatusQueryDocumentSnapshot> {
  WorkStatusQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory WorkStatusQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<WorkStatus> snapshot,
  ) {
    final docs = snapshot.docs.map(WorkStatusQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        WorkStatusDocumentSnapshot._,
      );
    }).toList();

    return WorkStatusQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<WorkStatusDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    WorkStatusDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<WorkStatusDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<WorkStatus> snapshot;

  @override
  final List<WorkStatusQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<WorkStatusDocumentSnapshot>> docChanges;
}

class WorkStatusQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<WorkStatus>
    implements WorkStatusDocumentSnapshot {
  WorkStatusQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<WorkStatus> snapshot;

  @override
  final WorkStatus data;

  @override
  WorkStatusDocumentReference get reference {
    return WorkStatusDocumentReference(snapshot.reference);
  }
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['id'] as String,
      objectId: json['objectId'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      updatedAt: const FirestoreDateTimeConverter()
          .fromJson(json['updatedAt'] as Timestamp),
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['createdAt'] as Timestamp),
      phone: (json['phone'] as num).toInt(),
    );

const _$UserFieldMap = <String, String>{
  'id': 'id',
  'objectId': 'objectId',
  'createdAt': 'createdAt',
  'name': 'name',
  'email': 'email',
  'updatedAt': 'updatedAt',
  'phone': 'phone',
};

// ignore: unused_element
abstract class _$UserPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? objectId(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? phone(int instance) => instance;
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'createdAt':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
      'name': instance.name,
      'email': instance.email,
      'updatedAt':
          const FirestoreDateTimeConverter().toJson(instance.updatedAt),
      'phone': instance.phone,
    };

WorkStatus _$WorkStatusFromJson(Map<String, dynamic> json) => WorkStatus(
      id: json['id'] as String,
      objectId: json['objectId'] as String,
      workDate: const FirestoreDateTimeConverter()
          .fromJson(json['workDate'] as Timestamp),
      hoursWorked: (json['hoursWorked'] as num).toDouble(),
      updatedAt: const FirestoreDateTimeConverter()
          .fromJson(json['updatedAt'] as Timestamp),
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['createdAt'] as Timestamp),
      userId: json['userId'] as String,
      projectId: json['projectId'] as String,
    );

const _$WorkStatusFieldMap = <String, String>{
  'id': 'id',
  'objectId': 'objectId',
  'createdAt': 'createdAt',
  'workDate': 'workDate',
  'hoursWorked': 'hoursWorked',
  'updatedAt': 'updatedAt',
  'userId': 'userId',
  'projectId': 'projectId',
};

// ignore: unused_element
abstract class _$WorkStatusPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? objectId(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? workDate(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? hoursWorked(double instance) => instance;
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? userId(String instance) => instance;
  // ignore: unused_element
  static Object? projectId(String instance) => instance;
}

Map<String, dynamic> _$WorkStatusToJson(WorkStatus instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'createdAt':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
      'workDate': const FirestoreDateTimeConverter().toJson(instance.workDate),
      'hoursWorked': instance.hoursWorked,
      'updatedAt':
          const FirestoreDateTimeConverter().toJson(instance.updatedAt),
      'userId': instance.userId,
      'projectId': instance.projectId,
    };
