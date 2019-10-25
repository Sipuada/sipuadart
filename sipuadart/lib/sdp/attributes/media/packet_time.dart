

import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

class PacketTime extends Attribute {

  static const _level = AttributeLevel.media;
  static const _attribute = "ptime";

  PacketTime(final String value) : super(_level, _attribute, value);

}