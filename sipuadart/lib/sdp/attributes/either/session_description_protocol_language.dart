import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

class SessionDescriptionProtocolLanguage extends Attribute {

  static const _level = AttributeLevel.either;
  static const _attribute = "sdplang";

  SessionDescriptionProtocolLanguage(final String value) : super(_level, _attribute, value);

}