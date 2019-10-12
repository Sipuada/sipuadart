import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

class Charset extends Attribute {

  static const _level = AttributeLevel.session;
  static const _attribute = "charset";
  static const _charset = "ISO-10646";

  Charset(final String value) : super(_level, _attribute, value);
  Charset.standard() : this(_charset);

  @override
  AttributeLevel get level => _level;

}