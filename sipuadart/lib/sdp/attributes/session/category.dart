import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

class Category extends Attribute {

  static const _attribute = "cat";
  static const _level = AttributeLevel.session;

  Category(final String value) : super(_level, _attribute, value);

  @override
  AttributeLevel get level => _level;

}