import 'package:flutter/foundation.dart';
import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';
import 'package:sipuadart/sdp/attributes/media/orientation_type.dart';

class Orientation extends Attribute {

  static const _level = AttributeLevel.media;
  static const _attribute = "orient";

  Orientation(final String value) : super(_level, _attribute, value);

  Orientation.withOrientationType(final OrientationType type) : this(describeEnum(type));

}