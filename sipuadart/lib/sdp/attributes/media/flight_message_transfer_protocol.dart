

import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

class FlightMessageTransferProtocol extends Attribute {

  static const _level = AttributeLevel.media;
  static const _attribute = "fmtp";

  FlightMessageTransferProtocol(final String value) : super(_level, _attribute, value);

}