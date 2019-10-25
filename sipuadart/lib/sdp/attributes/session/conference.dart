import 'package:flutter/foundation.dart';
import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';
import 'package:sipuadart/sdp/attributes/session/conference_type.dart';

class Conference extends Attribute {

  static const _level = AttributeLevel.session;
  static const _attribute = "type";

  Conference(final String value) : super(_level, _attribute, value);

  Conference.withConferenceType(final ConferenceType type) : this(describeEnum(type));
}