import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';

class EmailAddressValidator implements Validator {
  const EmailAddressValidator();

  @override
  void validate(covariant String value, String propertyName) {
    if (!value.endsWith("@gmail.com")) {
      throw ArgumentError.value(value, propertyName);
    }
  }
}