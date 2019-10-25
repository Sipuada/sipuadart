import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

/// It is a charset-dependent attribute, meaning that its value should be
/// interpreted in the charset specified for the session description
/// if one is specified, or by default in ISO 10646/UTF-8.
///
class Keywords extends Attribute {

  static const _level = AttributeLevel.session;
  static const _attribute = "keywds";

  Keywords(final String value) : super(_level, _attribute, value);

}