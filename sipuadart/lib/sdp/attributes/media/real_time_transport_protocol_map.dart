

import 'package:sipuadart/sdp/attributes/attribute.dart';
import 'package:sipuadart/sdp/attributes/attribute_level.dart';

class RealTimeTransportProtocolMap extends Attribute {

  static const _level = AttributeLevel.media;
  static const _attribute = "rtpmap";

  RealTimeTransportProtocolMap(final String value) : super(_level, _attribute, value);

  RealTimeTransportProtocolMap.empty() : this("");

}