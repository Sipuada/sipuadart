

import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

class Tool extends Attribute {

  static const _level = AttributeLevel.session;
  static const _attribute = "tool";

  Tool(final String value) : super(_level, _attribute, value);

}