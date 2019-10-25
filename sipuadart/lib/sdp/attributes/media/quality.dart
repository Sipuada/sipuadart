

import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

class Quality extends Attribute {

  static const _level = AttributeLevel.media;
  static const _attribute = "quality";

  Quality(final String value) : super(_level, _attribute, value);

}