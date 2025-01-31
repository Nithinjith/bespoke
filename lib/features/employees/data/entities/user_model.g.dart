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

  late final FinanceCollectionReference finance = _$FinanceCollectionReference(
    reference,
  );

  late final UserProjectCollectionReference userProjects =
      _$UserProjectCollectionReference(
    reference,
  );

  late final AssociatedUserCollectionReference associatedUsers =
      _$AssociatedUserCollectionReference(
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

  late final FinanceCollectionReference finance = _$FinanceCollectionReference(
    reference,
  );

  late final UserProjectCollectionReference userProjects =
      _$UserProjectCollectionReference(
    reference,
  );

  late final AssociatedUserCollectionReference associatedUsers =
      _$AssociatedUserCollectionReference(
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

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class FinanceCollectionReference
    implements
        FinanceQuery,
        FirestoreCollectionReference<Finance, FinanceQuerySnapshot> {
  factory FinanceCollectionReference(
    DocumentReference<User> parent,
  ) = _$FinanceCollectionReference;

  static Finance fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return Finance.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    Finance value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<Finance> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  FinanceDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<FinanceDocumentReference> add(Finance value);
}

class _$FinanceCollectionReference extends _$FinanceQuery
    implements FinanceCollectionReference {
  factory _$FinanceCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$FinanceCollectionReference._(
      UserDocumentReference(parent),
      parent.collection('finance').withConverter(
            fromFirestore: FinanceCollectionReference.fromFirestore,
            toFirestore: FinanceCollectionReference.toFirestore,
          ),
    );
  }

  _$FinanceCollectionReference._(
    this.parent,
    CollectionReference<Finance> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<Finance> get reference =>
      super.reference as CollectionReference<Finance>;

  @override
  FinanceDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return FinanceDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<FinanceDocumentReference> add(Finance value) {
    return reference.add(value).then((ref) => FinanceDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$FinanceCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class FinanceDocumentReference
    extends FirestoreDocumentReference<Finance, FinanceDocumentSnapshot> {
  factory FinanceDocumentReference(DocumentReference<Finance> reference) =
      _$FinanceDocumentReference;

  DocumentReference<Finance> get reference;

  /// A reference to the [FinanceCollectionReference] containing this document.
  FinanceCollectionReference get parent {
    return _$FinanceCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<FinanceDocumentSnapshot> snapshots();

  @override
  Future<FinanceDocumentSnapshot> get([GetOptions? options]);

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
    Finance model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
    FieldValue projectIdFieldValue,
    FieldValue amountFieldValue,
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
    Finance model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
    FieldValue projectIdFieldValue,
    FieldValue amountFieldValue,
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
    Finance model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
    FieldValue projectIdFieldValue,
    FieldValue amountFieldValue,
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
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String projectId,
    FieldValue projectIdFieldValue,
    double amount,
    FieldValue amountFieldValue,
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
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String projectId,
    FieldValue projectIdFieldValue,
    double amount,
    FieldValue amountFieldValue,
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
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
    String projectId,
    FieldValue projectIdFieldValue,
    double amount,
    FieldValue amountFieldValue,
  });
}

class _$FinanceDocumentReference
    extends FirestoreDocumentReference<Finance, FinanceDocumentSnapshot>
    implements FinanceDocumentReference {
  _$FinanceDocumentReference(this.reference);

  @override
  final DocumentReference<Finance> reference;

  /// A reference to the [FinanceCollectionReference] containing this document.
  FinanceCollectionReference get parent {
    return _$FinanceCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<FinanceDocumentSnapshot> snapshots() {
    return reference.snapshots().map(FinanceDocumentSnapshot._);
  }

  @override
  Future<FinanceDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(FinanceDocumentSnapshot._);
  }

  @override
  Future<FinanceDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(FinanceDocumentSnapshot._);
  }

  Future<void> set(
    Finance model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
    FieldValue? projectIdFieldValue,
    FieldValue? amountFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$FinanceFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$FinanceFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$FinanceFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$FinanceFieldMap['userId']!: userIdFieldValue,
      if (projectIdFieldValue != null)
        _$FinanceFieldMap['projectId']!: projectIdFieldValue,
      if (amountFieldValue != null)
        _$FinanceFieldMap['amount']!: amountFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    Finance model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
    FieldValue? projectIdFieldValue,
    FieldValue? amountFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$FinanceFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$FinanceFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$FinanceFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$FinanceFieldMap['userId']!: userIdFieldValue,
      if (projectIdFieldValue != null)
        _$FinanceFieldMap['projectId']!: projectIdFieldValue,
      if (amountFieldValue != null)
        _$FinanceFieldMap['amount']!: amountFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    Finance model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
    FieldValue? projectIdFieldValue,
    FieldValue? amountFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$FinanceFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$FinanceFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$FinanceFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$FinanceFieldMap['userId']!: userIdFieldValue,
      if (projectIdFieldValue != null)
        _$FinanceFieldMap['projectId']!: projectIdFieldValue,
      if (amountFieldValue != null)
        _$FinanceFieldMap['amount']!: amountFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? projectId = _sentinel,
    FieldValue? projectIdFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
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
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$FinanceFieldMap['objectId']!:
            _$FinancePerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$FinanceFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$FinanceFieldMap['createdAt']!:
            _$FinancePerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$FinanceFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$FinanceFieldMap['updatedAt']!:
            _$FinancePerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$FinanceFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$FinanceFieldMap['userId']!:
            _$FinancePerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$FinanceFieldMap['userId']!: userIdFieldValue,
      if (projectId != _sentinel)
        _$FinanceFieldMap['projectId']!:
            _$FinancePerFieldToJson.projectId(projectId as String),
      if (projectIdFieldValue != null)
        _$FinanceFieldMap['projectId']!: projectIdFieldValue,
      if (amount != _sentinel)
        _$FinanceFieldMap['amount']!:
            _$FinancePerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$FinanceFieldMap['amount']!: amountFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? projectId = _sentinel,
    FieldValue? projectIdFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
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
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$FinanceFieldMap['objectId']!:
            _$FinancePerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$FinanceFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$FinanceFieldMap['createdAt']!:
            _$FinancePerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$FinanceFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$FinanceFieldMap['updatedAt']!:
            _$FinancePerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$FinanceFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$FinanceFieldMap['userId']!:
            _$FinancePerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$FinanceFieldMap['userId']!: userIdFieldValue,
      if (projectId != _sentinel)
        _$FinanceFieldMap['projectId']!:
            _$FinancePerFieldToJson.projectId(projectId as String),
      if (projectIdFieldValue != null)
        _$FinanceFieldMap['projectId']!: projectIdFieldValue,
      if (amount != _sentinel)
        _$FinanceFieldMap['amount']!:
            _$FinancePerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$FinanceFieldMap['amount']!: amountFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
    Object? projectId = _sentinel,
    FieldValue? projectIdFieldValue,
    Object? amount = _sentinel,
    FieldValue? amountFieldValue,
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
    assert(
      amount == _sentinel || amountFieldValue == null,
      "Cannot specify both amount and amountFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$FinanceFieldMap['objectId']!:
            _$FinancePerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$FinanceFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$FinanceFieldMap['createdAt']!:
            _$FinancePerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$FinanceFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$FinanceFieldMap['updatedAt']!:
            _$FinancePerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$FinanceFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$FinanceFieldMap['userId']!:
            _$FinancePerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$FinanceFieldMap['userId']!: userIdFieldValue,
      if (projectId != _sentinel)
        _$FinanceFieldMap['projectId']!:
            _$FinancePerFieldToJson.projectId(projectId as String),
      if (projectIdFieldValue != null)
        _$FinanceFieldMap['projectId']!: projectIdFieldValue,
      if (amount != _sentinel)
        _$FinanceFieldMap['amount']!:
            _$FinancePerFieldToJson.amount(amount as double),
      if (amountFieldValue != null)
        _$FinanceFieldMap['amount']!: amountFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is FinanceDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class FinanceQuery
    implements QueryReference<Finance, FinanceQuerySnapshot> {
  @override
  FinanceQuery limit(int limit);

  @override
  FinanceQuery limitToLast(int limit);

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
  FinanceQuery whereFieldPath(
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

  FinanceQuery whereDocumentId({
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

  FinanceQuery whereObjectId({
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

  FinanceQuery whereCreatedAt({
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

  FinanceQuery whereUpdatedAt({
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

  FinanceQuery whereUserId({
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

  FinanceQuery whereProjectId({
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

  FinanceQuery whereAmount({
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
  FinanceQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  });

  FinanceQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  });

  FinanceQuery orderByObjectId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  });

  FinanceQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  });

  FinanceQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  });

  FinanceQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  });

  FinanceQuery orderByProjectId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  });

  FinanceQuery orderByAmount({
    bool descending = false,
    double startAt,
    double startAfter,
    double endAt,
    double endBefore,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  });
}

class _$FinanceQuery extends QueryReference<Finance, FinanceQuerySnapshot>
    implements FinanceQuery {
  _$FinanceQuery(
    this._collection, {
    required Query<Finance> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<FinanceQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference.snapshots().map(FinanceQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<FinanceQuerySnapshot> get([GetOptions? options]) {
    return reference.get(options).then(FinanceQuerySnapshot._fromQuerySnapshot);
  }

  @override
  FinanceQuery limit(int limit) {
    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FinanceQuery limitToLast(int limit) {
    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FinanceQuery whereFieldPath(
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
    return _$FinanceQuery(
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
  FinanceQuery whereDocumentId({
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
    return _$FinanceQuery(
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
  FinanceQuery whereObjectId({
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
    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FinanceFieldMap['objectId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FinancePerFieldToJson.objectId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FinancePerFieldToJson.objectId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$FinancePerFieldToJson.objectId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FinancePerFieldToJson.objectId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FinancePerFieldToJson.objectId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FinancePerFieldToJson.objectId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$FinancePerFieldToJson.objectId(e)),
        whereNotIn: whereNotIn?.map((e) => _$FinancePerFieldToJson.objectId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FinanceQuery whereCreatedAt({
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
    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FinanceFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FinancePerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FinancePerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$FinancePerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FinancePerFieldToJson.createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FinancePerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FinancePerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$FinancePerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$FinancePerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FinanceQuery whereUpdatedAt({
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
    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FinanceFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FinancePerFieldToJson.updatedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FinancePerFieldToJson.updatedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$FinancePerFieldToJson.updatedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FinancePerFieldToJson.updatedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FinancePerFieldToJson.updatedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FinancePerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$FinancePerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$FinancePerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FinanceQuery whereUserId({
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
    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FinanceFieldMap['userId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FinancePerFieldToJson.userId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FinancePerFieldToJson.userId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$FinancePerFieldToJson.userId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FinancePerFieldToJson.userId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FinancePerFieldToJson.userId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FinancePerFieldToJson.userId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$FinancePerFieldToJson.userId(e)),
        whereNotIn: whereNotIn?.map((e) => _$FinancePerFieldToJson.userId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FinanceQuery whereProjectId({
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
    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FinanceFieldMap['projectId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FinancePerFieldToJson.projectId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FinancePerFieldToJson.projectId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$FinancePerFieldToJson.projectId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FinancePerFieldToJson.projectId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FinancePerFieldToJson.projectId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FinancePerFieldToJson
                .projectId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$FinancePerFieldToJson.projectId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$FinancePerFieldToJson.projectId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FinanceQuery whereAmount({
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
    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$FinanceFieldMap['amount']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$FinancePerFieldToJson.amount(isEqualTo as double)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$FinancePerFieldToJson.amount(isNotEqualTo as double)
            : null,
        isLessThan: isLessThan != null
            ? _$FinancePerFieldToJson.amount(isLessThan as double)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$FinancePerFieldToJson.amount(isLessThanOrEqualTo as double)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$FinancePerFieldToJson.amount(isGreaterThan as double)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$FinancePerFieldToJson.amount(isGreaterThanOrEqualTo as double)
            : null,
        whereIn: whereIn?.map((e) => _$FinancePerFieldToJson.amount(e)),
        whereNotIn: whereNotIn?.map((e) => _$FinancePerFieldToJson.amount(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  FinanceQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
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

    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FinanceQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
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

    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FinanceQuery orderByObjectId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$FinanceFieldMap['objectId']!, descending: descending);
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

    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FinanceQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$FinanceFieldMap['createdAt']!, descending: descending);
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

    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FinanceQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$FinanceFieldMap['updatedAt']!, descending: descending);
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

    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FinanceQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$FinanceFieldMap['userId']!,
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

    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FinanceQuery orderByProjectId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$FinanceFieldMap['projectId']!, descending: descending);
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

    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  FinanceQuery orderByAmount({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    FinanceDocumentSnapshot? startAtDocument,
    FinanceDocumentSnapshot? endAtDocument,
    FinanceDocumentSnapshot? endBeforeDocument,
    FinanceDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(_$FinanceFieldMap['amount']!,
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

    return _$FinanceQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$FinanceQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class FinanceDocumentSnapshot extends FirestoreDocumentSnapshot<Finance> {
  FinanceDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<Finance> snapshot;

  @override
  FinanceDocumentReference get reference {
    return FinanceDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final Finance? data;
}

class FinanceQuerySnapshot
    extends FirestoreQuerySnapshot<Finance, FinanceQueryDocumentSnapshot> {
  FinanceQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory FinanceQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<Finance> snapshot,
  ) {
    final docs = snapshot.docs.map(FinanceQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        FinanceDocumentSnapshot._,
      );
    }).toList();

    return FinanceQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<FinanceDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    FinanceDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<FinanceDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<Finance> snapshot;

  @override
  final List<FinanceQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<FinanceDocumentSnapshot>> docChanges;
}

class FinanceQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<Finance>
    implements FinanceDocumentSnapshot {
  FinanceQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<Finance> snapshot;

  @override
  final Finance data;

  @override
  FinanceDocumentReference get reference {
    return FinanceDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class UserProjectCollectionReference
    implements
        UserProjectQuery,
        FirestoreCollectionReference<UserProject, UserProjectQuerySnapshot> {
  factory UserProjectCollectionReference(
    DocumentReference<User> parent,
  ) = _$UserProjectCollectionReference;

  static UserProject fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return UserProject.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    UserProject value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<UserProject> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  UserProjectDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<UserProjectDocumentReference> add(UserProject value);
}

class _$UserProjectCollectionReference extends _$UserProjectQuery
    implements UserProjectCollectionReference {
  factory _$UserProjectCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$UserProjectCollectionReference._(
      UserDocumentReference(parent),
      parent.collection('user_projects').withConverter(
            fromFirestore: UserProjectCollectionReference.fromFirestore,
            toFirestore: UserProjectCollectionReference.toFirestore,
          ),
    );
  }

  _$UserProjectCollectionReference._(
    this.parent,
    CollectionReference<UserProject> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<UserProject> get reference =>
      super.reference as CollectionReference<UserProject>;

  @override
  UserProjectDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return UserProjectDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<UserProjectDocumentReference> add(UserProject value) {
    return reference
        .add(value)
        .then((ref) => UserProjectDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserProjectCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class UserProjectDocumentReference extends FirestoreDocumentReference<
    UserProject, UserProjectDocumentSnapshot> {
  factory UserProjectDocumentReference(
          DocumentReference<UserProject> reference) =
      _$UserProjectDocumentReference;

  DocumentReference<UserProject> get reference;

  /// A reference to the [UserProjectCollectionReference] containing this document.
  UserProjectCollectionReference get parent {
    return _$UserProjectCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UserProjectDocumentSnapshot> snapshots();

  @override
  Future<UserProjectDocumentSnapshot> get([GetOptions? options]);

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
    UserProject model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
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
    UserProject model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
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
    UserProject model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
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
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
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
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
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
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
  });
}

class _$UserProjectDocumentReference
    extends FirestoreDocumentReference<UserProject, UserProjectDocumentSnapshot>
    implements UserProjectDocumentReference {
  _$UserProjectDocumentReference(this.reference);

  @override
  final DocumentReference<UserProject> reference;

  /// A reference to the [UserProjectCollectionReference] containing this document.
  UserProjectCollectionReference get parent {
    return _$UserProjectCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<UserProjectDocumentSnapshot> snapshots() {
    return reference.snapshots().map(UserProjectDocumentSnapshot._);
  }

  @override
  Future<UserProjectDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(UserProjectDocumentSnapshot._);
  }

  @override
  Future<UserProjectDocumentSnapshot> transactionGet(Transaction transaction) {
    return transaction.get(reference).then(UserProjectDocumentSnapshot._);
  }

  Future<void> set(
    UserProject model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$UserProjectFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$UserProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$UserProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$UserProjectFieldMap['userId']!: userIdFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    UserProject model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$UserProjectFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$UserProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$UserProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$UserProjectFieldMap['userId']!: userIdFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    UserProject model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$UserProjectFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$UserProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$UserProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$UserProjectFieldMap['userId']!: userIdFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
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
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$UserProjectFieldMap['objectId']!:
            _$UserProjectPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$UserProjectFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$UserProjectFieldMap['createdAt']!:
            _$UserProjectPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$UserProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$UserProjectFieldMap['updatedAt']!:
            _$UserProjectPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$UserProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$UserProjectFieldMap['userId']!:
            _$UserProjectPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$UserProjectFieldMap['userId']!: userIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
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
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$UserProjectFieldMap['objectId']!:
            _$UserProjectPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$UserProjectFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$UserProjectFieldMap['createdAt']!:
            _$UserProjectPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$UserProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$UserProjectFieldMap['updatedAt']!:
            _$UserProjectPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$UserProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$UserProjectFieldMap['userId']!:
            _$UserProjectPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$UserProjectFieldMap['userId']!: userIdFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
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
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$UserProjectFieldMap['objectId']!:
            _$UserProjectPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$UserProjectFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$UserProjectFieldMap['createdAt']!:
            _$UserProjectPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$UserProjectFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$UserProjectFieldMap['updatedAt']!:
            _$UserProjectPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$UserProjectFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$UserProjectFieldMap['userId']!:
            _$UserProjectPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$UserProjectFieldMap['userId']!: userIdFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is UserProjectDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class UserProjectQuery
    implements QueryReference<UserProject, UserProjectQuerySnapshot> {
  @override
  UserProjectQuery limit(int limit);

  @override
  UserProjectQuery limitToLast(int limit);

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
  UserProjectQuery whereFieldPath(
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

  UserProjectQuery whereDocumentId({
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

  UserProjectQuery whereObjectId({
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

  UserProjectQuery whereCreatedAt({
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

  UserProjectQuery whereUpdatedAt({
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

  UserProjectQuery whereUserId({
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
  UserProjectQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  });

  UserProjectQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  });

  UserProjectQuery orderByObjectId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  });

  UserProjectQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  });

  UserProjectQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  });

  UserProjectQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  });
}

class _$UserProjectQuery
    extends QueryReference<UserProject, UserProjectQuerySnapshot>
    implements UserProjectQuery {
  _$UserProjectQuery(
    this._collection, {
    required Query<UserProject> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<UserProjectQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(UserProjectQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<UserProjectQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(UserProjectQuerySnapshot._fromQuerySnapshot);
  }

  @override
  UserProjectQuery limit(int limit) {
    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProjectQuery limitToLast(int limit) {
    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProjectQuery whereFieldPath(
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
    return _$UserProjectQuery(
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
  UserProjectQuery whereDocumentId({
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
    return _$UserProjectQuery(
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
  UserProjectQuery whereObjectId({
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
    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProjectFieldMap['objectId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProjectPerFieldToJson.objectId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProjectPerFieldToJson.objectId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProjectPerFieldToJson.objectId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProjectPerFieldToJson
                .objectId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProjectPerFieldToJson.objectId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProjectPerFieldToJson
                .objectId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserProjectPerFieldToJson.objectId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserProjectPerFieldToJson.objectId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProjectQuery whereCreatedAt({
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
    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProjectFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProjectPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProjectPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProjectPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProjectPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProjectPerFieldToJson.createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProjectPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$UserProjectPerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserProjectPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProjectQuery whereUpdatedAt({
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
    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProjectFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProjectPerFieldToJson.updatedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProjectPerFieldToJson.updatedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProjectPerFieldToJson.updatedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProjectPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProjectPerFieldToJson.updatedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProjectPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn: whereIn?.map((e) => _$UserProjectPerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserProjectPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProjectQuery whereUserId({
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
    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$UserProjectFieldMap['userId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$UserProjectPerFieldToJson.userId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$UserProjectPerFieldToJson.userId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$UserProjectPerFieldToJson.userId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$UserProjectPerFieldToJson.userId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$UserProjectPerFieldToJson.userId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$UserProjectPerFieldToJson
                .userId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$UserProjectPerFieldToJson.userId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$UserProjectPerFieldToJson.userId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  UserProjectQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
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

    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProjectQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
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

    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProjectQuery orderByObjectId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserProjectFieldMap['objectId']!, descending: descending);
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

    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProjectQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserProjectFieldMap['createdAt']!, descending: descending);
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

    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProjectQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserProjectFieldMap['updatedAt']!, descending: descending);
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

    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  UserProjectQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    UserProjectDocumentSnapshot? startAtDocument,
    UserProjectDocumentSnapshot? endAtDocument,
    UserProjectDocumentSnapshot? endBeforeDocument,
    UserProjectDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$UserProjectFieldMap['userId']!, descending: descending);
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

    return _$UserProjectQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$UserProjectQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class UserProjectDocumentSnapshot
    extends FirestoreDocumentSnapshot<UserProject> {
  UserProjectDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<UserProject> snapshot;

  @override
  UserProjectDocumentReference get reference {
    return UserProjectDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final UserProject? data;
}

class UserProjectQuerySnapshot extends FirestoreQuerySnapshot<UserProject,
    UserProjectQueryDocumentSnapshot> {
  UserProjectQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory UserProjectQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<UserProject> snapshot,
  ) {
    final docs = snapshot.docs.map(UserProjectQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        UserProjectDocumentSnapshot._,
      );
    }).toList();

    return UserProjectQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<UserProjectDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    UserProjectDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<UserProjectDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<UserProject> snapshot;

  @override
  final List<UserProjectQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<UserProjectDocumentSnapshot>> docChanges;
}

class UserProjectQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<UserProject>
    implements UserProjectDocumentSnapshot {
  UserProjectQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<UserProject> snapshot;

  @override
  final UserProject data;

  @override
  UserProjectDocumentReference get reference {
    return UserProjectDocumentReference(snapshot.reference);
  }
}

/// A collection reference object can be used for adding documents,
/// getting document references, and querying for documents
/// (using the methods inherited from Query).
abstract class AssociatedUserCollectionReference
    implements
        AssociatedUserQuery,
        FirestoreCollectionReference<AssociatedUser,
            AssociatedUserQuerySnapshot> {
  factory AssociatedUserCollectionReference(
    DocumentReference<User> parent,
  ) = _$AssociatedUserCollectionReference;

  static AssociatedUser fromFirestore(
    DocumentSnapshot<Map<String, Object?>> snapshot,
    SnapshotOptions? options,
  ) {
    return AssociatedUser.fromJson({'id': snapshot.id, ...?snapshot.data()});
  }

  static Map<String, Object?> toFirestore(
    AssociatedUser value,
    SetOptions? options,
  ) {
    return {...value.toJson()}..remove('id');
  }

  @override
  CollectionReference<AssociatedUser> get reference;

  /// A reference to the containing [UserDocumentReference] if this is a subcollection.
  UserDocumentReference get parent;

  @override
  AssociatedUserDocumentReference doc([String? id]);

  /// Add a new document to this collection with the specified data,
  /// assigning it a document ID automatically.
  Future<AssociatedUserDocumentReference> add(AssociatedUser value);
}

class _$AssociatedUserCollectionReference extends _$AssociatedUserQuery
    implements AssociatedUserCollectionReference {
  factory _$AssociatedUserCollectionReference(
    DocumentReference<User> parent,
  ) {
    return _$AssociatedUserCollectionReference._(
      UserDocumentReference(parent),
      parent.collection('associated_users').withConverter(
            fromFirestore: AssociatedUserCollectionReference.fromFirestore,
            toFirestore: AssociatedUserCollectionReference.toFirestore,
          ),
    );
  }

  _$AssociatedUserCollectionReference._(
    this.parent,
    CollectionReference<AssociatedUser> reference,
  ) : super(reference, $referenceWithoutCursor: reference);

  @override
  final UserDocumentReference parent;

  String get path => reference.path;

  @override
  CollectionReference<AssociatedUser> get reference =>
      super.reference as CollectionReference<AssociatedUser>;

  @override
  AssociatedUserDocumentReference doc([String? id]) {
    assert(
      id == null || id.split('/').length == 1,
      'The document ID cannot be from a different collection',
    );
    return AssociatedUserDocumentReference(
      reference.doc(id),
    );
  }

  @override
  Future<AssociatedUserDocumentReference> add(AssociatedUser value) {
    return reference
        .add(value)
        .then((ref) => AssociatedUserDocumentReference(ref));
  }

  @override
  bool operator ==(Object other) {
    return other is _$AssociatedUserCollectionReference &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

abstract class AssociatedUserDocumentReference
    extends FirestoreDocumentReference<AssociatedUser,
        AssociatedUserDocumentSnapshot> {
  factory AssociatedUserDocumentReference(
          DocumentReference<AssociatedUser> reference) =
      _$AssociatedUserDocumentReference;

  DocumentReference<AssociatedUser> get reference;

  /// A reference to the [AssociatedUserCollectionReference] containing this document.
  AssociatedUserCollectionReference get parent {
    return _$AssociatedUserCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AssociatedUserDocumentSnapshot> snapshots();

  @override
  Future<AssociatedUserDocumentSnapshot> get([GetOptions? options]);

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
    AssociatedUser model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
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
    AssociatedUser model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
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
    AssociatedUser model, {
    SetOptions? options,
    FieldValue objectIdFieldValue,
    FieldValue createdAtFieldValue,
    FieldValue updatedAtFieldValue,
    FieldValue userIdFieldValue,
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
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
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
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
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
    DateTime updatedAt,
    FieldValue updatedAtFieldValue,
    String userId,
    FieldValue userIdFieldValue,
  });
}

class _$AssociatedUserDocumentReference extends FirestoreDocumentReference<
    AssociatedUser,
    AssociatedUserDocumentSnapshot> implements AssociatedUserDocumentReference {
  _$AssociatedUserDocumentReference(this.reference);

  @override
  final DocumentReference<AssociatedUser> reference;

  /// A reference to the [AssociatedUserCollectionReference] containing this document.
  AssociatedUserCollectionReference get parent {
    return _$AssociatedUserCollectionReference(
      reference.parent.parent!.withConverter<User>(
        fromFirestore: UserCollectionReference.fromFirestore,
        toFirestore: UserCollectionReference.toFirestore,
      ),
    );
  }

  @override
  Stream<AssociatedUserDocumentSnapshot> snapshots() {
    return reference.snapshots().map(AssociatedUserDocumentSnapshot._);
  }

  @override
  Future<AssociatedUserDocumentSnapshot> get([GetOptions? options]) {
    return reference.get(options).then(AssociatedUserDocumentSnapshot._);
  }

  @override
  Future<AssociatedUserDocumentSnapshot> transactionGet(
      Transaction transaction) {
    return transaction.get(reference).then(AssociatedUserDocumentSnapshot._);
  }

  Future<void> set(
    AssociatedUser model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
  }) async {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$AssociatedUserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$AssociatedUserFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$AssociatedUserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$AssociatedUserFieldMap['userId']!: userIdFieldValue,
    };

    final castedReference = reference.withConverter<Map<String, dynamic>>(
      fromFirestore: (snapshot, options) => throw UnimplementedError(),
      toFirestore: (value, options) => value,
    );
    return castedReference.set(json, options);
  }

  void transactionSet(
    Transaction transaction,
    AssociatedUser model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$AssociatedUserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$AssociatedUserFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$AssociatedUserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$AssociatedUserFieldMap['userId']!: userIdFieldValue,
    };

    transaction.set(reference, json, options);
  }

  void batchSet(
    WriteBatch batch,
    AssociatedUser model, {
    SetOptions? options,
    FieldValue? objectIdFieldValue,
    FieldValue? createdAtFieldValue,
    FieldValue? updatedAtFieldValue,
    FieldValue? userIdFieldValue,
  }) {
    final json = {
      ...model.toJson(),
      if (objectIdFieldValue != null)
        _$AssociatedUserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAtFieldValue != null)
        _$AssociatedUserFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAtFieldValue != null)
        _$AssociatedUserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userIdFieldValue != null)
        _$AssociatedUserFieldMap['userId']!: userIdFieldValue,
    };

    batch.set(reference, json, options);
  }

  Future<void> update({
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
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
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$AssociatedUserFieldMap['objectId']!:
            _$AssociatedUserPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$AssociatedUserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$AssociatedUserFieldMap['createdAt']!:
            _$AssociatedUserPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$AssociatedUserFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$AssociatedUserFieldMap['updatedAt']!:
            _$AssociatedUserPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$AssociatedUserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$AssociatedUserFieldMap['userId']!:
            _$AssociatedUserPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$AssociatedUserFieldMap['userId']!: userIdFieldValue,
    };

    return reference.update(json);
  }

  void transactionUpdate(
    Transaction transaction, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
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
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$AssociatedUserFieldMap['objectId']!:
            _$AssociatedUserPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$AssociatedUserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$AssociatedUserFieldMap['createdAt']!:
            _$AssociatedUserPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$AssociatedUserFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$AssociatedUserFieldMap['updatedAt']!:
            _$AssociatedUserPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$AssociatedUserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$AssociatedUserFieldMap['userId']!:
            _$AssociatedUserPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$AssociatedUserFieldMap['userId']!: userIdFieldValue,
    };

    transaction.update(reference, json);
  }

  void batchUpdate(
    WriteBatch batch, {
    Object? objectId = _sentinel,
    FieldValue? objectIdFieldValue,
    Object? createdAt = _sentinel,
    FieldValue? createdAtFieldValue,
    Object? updatedAt = _sentinel,
    FieldValue? updatedAtFieldValue,
    Object? userId = _sentinel,
    FieldValue? userIdFieldValue,
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
      updatedAt == _sentinel || updatedAtFieldValue == null,
      "Cannot specify both updatedAt and updatedAtFieldValue",
    );
    assert(
      userId == _sentinel || userIdFieldValue == null,
      "Cannot specify both userId and userIdFieldValue",
    );
    final json = {
      if (objectId != _sentinel)
        _$AssociatedUserFieldMap['objectId']!:
            _$AssociatedUserPerFieldToJson.objectId(objectId as String),
      if (objectIdFieldValue != null)
        _$AssociatedUserFieldMap['objectId']!: objectIdFieldValue,
      if (createdAt != _sentinel)
        _$AssociatedUserFieldMap['createdAt']!:
            _$AssociatedUserPerFieldToJson.createdAt(createdAt as DateTime),
      if (createdAtFieldValue != null)
        _$AssociatedUserFieldMap['createdAt']!: createdAtFieldValue,
      if (updatedAt != _sentinel)
        _$AssociatedUserFieldMap['updatedAt']!:
            _$AssociatedUserPerFieldToJson.updatedAt(updatedAt as DateTime),
      if (updatedAtFieldValue != null)
        _$AssociatedUserFieldMap['updatedAt']!: updatedAtFieldValue,
      if (userId != _sentinel)
        _$AssociatedUserFieldMap['userId']!:
            _$AssociatedUserPerFieldToJson.userId(userId as String),
      if (userIdFieldValue != null)
        _$AssociatedUserFieldMap['userId']!: userIdFieldValue,
    };

    batch.update(reference, json);
  }

  @override
  bool operator ==(Object other) {
    return other is AssociatedUserDocumentReference &&
        other.runtimeType == runtimeType &&
        other.parent == parent &&
        other.id == id;
  }

  @override
  int get hashCode => Object.hash(runtimeType, parent, id);
}

abstract class AssociatedUserQuery
    implements QueryReference<AssociatedUser, AssociatedUserQuerySnapshot> {
  @override
  AssociatedUserQuery limit(int limit);

  @override
  AssociatedUserQuery limitToLast(int limit);

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
  AssociatedUserQuery whereFieldPath(
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

  AssociatedUserQuery whereDocumentId({
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

  AssociatedUserQuery whereObjectId({
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

  AssociatedUserQuery whereCreatedAt({
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

  AssociatedUserQuery whereUpdatedAt({
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

  AssociatedUserQuery whereUserId({
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
  AssociatedUserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object startAt,
    Object startAfter,
    Object endAt,
    Object endBefore,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  });

  AssociatedUserQuery orderByDocumentId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  });

  AssociatedUserQuery orderByObjectId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  });

  AssociatedUserQuery orderByCreatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  });

  AssociatedUserQuery orderByUpdatedAt({
    bool descending = false,
    DateTime startAt,
    DateTime startAfter,
    DateTime endAt,
    DateTime endBefore,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  });

  AssociatedUserQuery orderByUserId({
    bool descending = false,
    String startAt,
    String startAfter,
    String endAt,
    String endBefore,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  });
}

class _$AssociatedUserQuery
    extends QueryReference<AssociatedUser, AssociatedUserQuerySnapshot>
    implements AssociatedUserQuery {
  _$AssociatedUserQuery(
    this._collection, {
    required Query<AssociatedUser> $referenceWithoutCursor,
    $QueryCursor $queryCursor = const $QueryCursor(),
  }) : super(
          $referenceWithoutCursor: $referenceWithoutCursor,
          $queryCursor: $queryCursor,
        );

  final CollectionReference<Object?> _collection;

  @override
  Stream<AssociatedUserQuerySnapshot> snapshots([SnapshotOptions? options]) {
    return reference
        .snapshots()
        .map(AssociatedUserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  Future<AssociatedUserQuerySnapshot> get([GetOptions? options]) {
    return reference
        .get(options)
        .then(AssociatedUserQuerySnapshot._fromQuerySnapshot);
  }

  @override
  AssociatedUserQuery limit(int limit) {
    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limit(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssociatedUserQuery limitToLast(int limit) {
    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.limitToLast(limit),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssociatedUserQuery whereFieldPath(
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
    return _$AssociatedUserQuery(
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
  AssociatedUserQuery whereDocumentId({
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
    return _$AssociatedUserQuery(
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
  AssociatedUserQuery whereObjectId({
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
    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssociatedUserFieldMap['objectId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssociatedUserPerFieldToJson.objectId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssociatedUserPerFieldToJson.objectId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$AssociatedUserPerFieldToJson.objectId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssociatedUserPerFieldToJson
                .objectId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssociatedUserPerFieldToJson.objectId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssociatedUserPerFieldToJson
                .objectId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn:
            whereIn?.map((e) => _$AssociatedUserPerFieldToJson.objectId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssociatedUserPerFieldToJson.objectId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssociatedUserQuery whereCreatedAt({
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
    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssociatedUserFieldMap['createdAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssociatedUserPerFieldToJson.createdAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssociatedUserPerFieldToJson.createdAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$AssociatedUserPerFieldToJson.createdAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssociatedUserPerFieldToJson
                .createdAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssociatedUserPerFieldToJson
                .createdAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssociatedUserPerFieldToJson
                .createdAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn:
            whereIn?.map((e) => _$AssociatedUserPerFieldToJson.createdAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssociatedUserPerFieldToJson.createdAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssociatedUserQuery whereUpdatedAt({
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
    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssociatedUserFieldMap['updatedAt']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssociatedUserPerFieldToJson.updatedAt(isEqualTo as DateTime)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssociatedUserPerFieldToJson.updatedAt(isNotEqualTo as DateTime)
            : null,
        isLessThan: isLessThan != null
            ? _$AssociatedUserPerFieldToJson.updatedAt(isLessThan as DateTime)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssociatedUserPerFieldToJson
                .updatedAt(isLessThanOrEqualTo as DateTime)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssociatedUserPerFieldToJson
                .updatedAt(isGreaterThan as DateTime)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssociatedUserPerFieldToJson
                .updatedAt(isGreaterThanOrEqualTo as DateTime)
            : null,
        whereIn:
            whereIn?.map((e) => _$AssociatedUserPerFieldToJson.updatedAt(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssociatedUserPerFieldToJson.updatedAt(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssociatedUserQuery whereUserId({
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
    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: $referenceWithoutCursor.where(
        _$AssociatedUserFieldMap['userId']!,
        isEqualTo: isEqualTo != _sentinel
            ? _$AssociatedUserPerFieldToJson.userId(isEqualTo as String)
            : null,
        isNotEqualTo: isNotEqualTo != _sentinel
            ? _$AssociatedUserPerFieldToJson.userId(isNotEqualTo as String)
            : null,
        isLessThan: isLessThan != null
            ? _$AssociatedUserPerFieldToJson.userId(isLessThan as String)
            : null,
        isLessThanOrEqualTo: isLessThanOrEqualTo != null
            ? _$AssociatedUserPerFieldToJson
                .userId(isLessThanOrEqualTo as String)
            : null,
        isGreaterThan: isGreaterThan != null
            ? _$AssociatedUserPerFieldToJson.userId(isGreaterThan as String)
            : null,
        isGreaterThanOrEqualTo: isGreaterThanOrEqualTo != null
            ? _$AssociatedUserPerFieldToJson
                .userId(isGreaterThanOrEqualTo as String)
            : null,
        whereIn: whereIn?.map((e) => _$AssociatedUserPerFieldToJson.userId(e)),
        whereNotIn:
            whereNotIn?.map((e) => _$AssociatedUserPerFieldToJson.userId(e)),
        isNull: isNull ??
            (isEqualTo == null ? false : null) ??
            (isNotEqualTo == null ? true : null),
      ),
      $queryCursor: $queryCursor,
    );
  }

  @override
  AssociatedUserQuery orderByFieldPath(
    Object fieldPath, {
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
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

    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssociatedUserQuery orderByDocumentId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
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

    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssociatedUserQuery orderByObjectId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AssociatedUserFieldMap['objectId']!, descending: descending);
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

    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssociatedUserQuery orderByCreatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AssociatedUserFieldMap['createdAt']!,
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

    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssociatedUserQuery orderByUpdatedAt({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor.orderBy(
        _$AssociatedUserFieldMap['updatedAt']!,
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

    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  AssociatedUserQuery orderByUserId({
    bool descending = false,
    Object? startAt = _sentinel,
    Object? startAfter = _sentinel,
    Object? endAt = _sentinel,
    Object? endBefore = _sentinel,
    AssociatedUserDocumentSnapshot? startAtDocument,
    AssociatedUserDocumentSnapshot? endAtDocument,
    AssociatedUserDocumentSnapshot? endBeforeDocument,
    AssociatedUserDocumentSnapshot? startAfterDocument,
  }) {
    final query = $referenceWithoutCursor
        .orderBy(_$AssociatedUserFieldMap['userId']!, descending: descending);
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

    return _$AssociatedUserQuery(
      _collection,
      $referenceWithoutCursor: query,
      $queryCursor: queryCursor,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is _$AssociatedUserQuery &&
        other.runtimeType == runtimeType &&
        other.reference == reference;
  }

  @override
  int get hashCode => Object.hash(runtimeType, reference);
}

class AssociatedUserDocumentSnapshot
    extends FirestoreDocumentSnapshot<AssociatedUser> {
  AssociatedUserDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final DocumentSnapshot<AssociatedUser> snapshot;

  @override
  AssociatedUserDocumentReference get reference {
    return AssociatedUserDocumentReference(
      snapshot.reference,
    );
  }

  @override
  final AssociatedUser? data;
}

class AssociatedUserQuerySnapshot extends FirestoreQuerySnapshot<AssociatedUser,
    AssociatedUserQueryDocumentSnapshot> {
  AssociatedUserQuerySnapshot._(
    this.snapshot,
    this.docs,
    this.docChanges,
  );

  factory AssociatedUserQuerySnapshot._fromQuerySnapshot(
    QuerySnapshot<AssociatedUser> snapshot,
  ) {
    final docs =
        snapshot.docs.map(AssociatedUserQueryDocumentSnapshot._).toList();

    final docChanges = snapshot.docChanges.map((change) {
      return _decodeDocumentChange(
        change,
        AssociatedUserDocumentSnapshot._,
      );
    }).toList();

    return AssociatedUserQuerySnapshot._(
      snapshot,
      docs,
      docChanges,
    );
  }

  static FirestoreDocumentChange<AssociatedUserDocumentSnapshot>
      _decodeDocumentChange<T>(
    DocumentChange<T> docChange,
    AssociatedUserDocumentSnapshot Function(DocumentSnapshot<T> doc) decodeDoc,
  ) {
    return FirestoreDocumentChange<AssociatedUserDocumentSnapshot>(
      type: docChange.type,
      oldIndex: docChange.oldIndex,
      newIndex: docChange.newIndex,
      doc: decodeDoc(docChange.doc),
    );
  }

  final QuerySnapshot<AssociatedUser> snapshot;

  @override
  final List<AssociatedUserQueryDocumentSnapshot> docs;

  @override
  final List<FirestoreDocumentChange<AssociatedUserDocumentSnapshot>>
      docChanges;
}

class AssociatedUserQueryDocumentSnapshot
    extends FirestoreQueryDocumentSnapshot<AssociatedUser>
    implements AssociatedUserDocumentSnapshot {
  AssociatedUserQueryDocumentSnapshot._(this.snapshot) : data = snapshot.data();

  @override
  final QueryDocumentSnapshot<AssociatedUser> snapshot;

  @override
  final AssociatedUser data;

  @override
  AssociatedUserDocumentReference get reference {
    return AssociatedUserDocumentReference(snapshot.reference);
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

Finance _$FinanceFromJson(Map<String, dynamic> json) => Finance(
      id: json['id'] as String,
      objectId: json['objectId'] as String,
      updatedAt: const FirestoreDateTimeConverter()
          .fromJson(json['updatedAt'] as Timestamp),
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['createdAt'] as Timestamp),
      userId: json['userId'] as String,
      projectId: json['projectId'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

const _$FinanceFieldMap = <String, String>{
  'id': 'id',
  'objectId': 'objectId',
  'createdAt': 'createdAt',
  'updatedAt': 'updatedAt',
  'userId': 'userId',
  'projectId': 'projectId',
  'amount': 'amount',
};

// ignore: unused_element
abstract class _$FinancePerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? objectId(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? userId(String instance) => instance;
  // ignore: unused_element
  static Object? projectId(String instance) => instance;
  // ignore: unused_element
  static Object? amount(double instance) => instance;
}

Map<String, dynamic> _$FinanceToJson(Finance instance) => <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'createdAt':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
      'updatedAt':
          const FirestoreDateTimeConverter().toJson(instance.updatedAt),
      'userId': instance.userId,
      'projectId': instance.projectId,
      'amount': instance.amount,
    };

UserProject _$UserProjectFromJson(Map<String, dynamic> json) => UserProject(
      id: json['id'] as String,
      objectId: json['objectId'] as String,
      updatedAt: const FirestoreDateTimeConverter()
          .fromJson(json['updatedAt'] as Timestamp),
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['createdAt'] as Timestamp),
      userId: json['userId'] as String,
    );

const _$UserProjectFieldMap = <String, String>{
  'id': 'id',
  'objectId': 'objectId',
  'createdAt': 'createdAt',
  'updatedAt': 'updatedAt',
  'userId': 'userId',
};

// ignore: unused_element
abstract class _$UserProjectPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? objectId(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? userId(String instance) => instance;
}

Map<String, dynamic> _$UserProjectToJson(UserProject instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'createdAt':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
      'updatedAt':
          const FirestoreDateTimeConverter().toJson(instance.updatedAt),
      'userId': instance.userId,
    };

AssociatedUser _$AssociatedUserFromJson(Map<String, dynamic> json) =>
    AssociatedUser(
      id: json['id'] as String,
      objectId: json['objectId'] as String,
      updatedAt: const FirestoreDateTimeConverter()
          .fromJson(json['updatedAt'] as Timestamp),
      createdAt: const FirestoreDateTimeConverter()
          .fromJson(json['createdAt'] as Timestamp),
      userId: json['userId'] as String,
    );

const _$AssociatedUserFieldMap = <String, String>{
  'id': 'id',
  'objectId': 'objectId',
  'createdAt': 'createdAt',
  'updatedAt': 'updatedAt',
  'userId': 'userId',
};

// ignore: unused_element
abstract class _$AssociatedUserPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? objectId(String instance) => instance;
  // ignore: unused_element
  static Object? createdAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? updatedAt(DateTime instance) =>
      const FirestoreDateTimeConverter().toJson(instance);
  // ignore: unused_element
  static Object? userId(String instance) => instance;
}

Map<String, dynamic> _$AssociatedUserToJson(AssociatedUser instance) =>
    <String, dynamic>{
      'id': instance.id,
      'objectId': instance.objectId,
      'createdAt':
          const FirestoreDateTimeConverter().toJson(instance.createdAt),
      'updatedAt':
          const FirestoreDateTimeConverter().toJson(instance.updatedAt),
      'userId': instance.userId,
    };
