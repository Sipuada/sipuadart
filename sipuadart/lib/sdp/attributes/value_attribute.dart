
import 'package:sipuadart/sdp/attributes/attribute_level.dart';
import 'package:sipuadart/sdp/field.dart';

/// https://tools.ietf.org/html/rfc4566#page-24
/// # Attributes
///
/// Attributes are the primary means for extending SDP.  Attributes may
/// be defined to be used as "session-level" attributes, "media-level"
/// attributes, or both.
///
/// A media description may have any number of attributes ("a=" fields)
/// which are media specific.  These are referred to as "media-level"
/// attributes and add information about the media stream.  Attribute
/// fields can also be added before the first media field; these
/// "session-level" attributes convey additional information that applies
/// to the conference as a whole rather than to individual media; an
/// example might be the conference's floor control policy.
///
/// Attribute fields may be of two forms:
///
///   * property attributes.  A property attribute is simply of the form
///     "a=<flag>".  These are binary attributes, and the presence of the
///     attribute conveys that the attribute is a property of the session.
///     An example might be "a=recvonly".
///
///   * value attributes.  A value attribute is of the form
///     "a=<attribute>:<value>".  An example might be that a whiteboard
///     could have the value attribute "a=orient:landscape"
///
///   Attribute interpretation depends on the media tool being invoked.
///   Thus receivers of session descriptions should be configurable in
///   their interpretation of announcements in general and of attributes in
///   particular.
///
///   Attribute names must be in the US-ASCII subset of ISO-10646/UTF-8.
///
abstract class ValueAttribute extends Field {

  static const _a = 97;

  AttributeLevel _level;
  String _attribute;
  String _value;
  final int _type = _a;

  ValueAttribute(this._level, this._attribute, this._value);

  ValueAttribute.empty() {
    _level = AttributeLevel.none;
    _attribute = "";
    _value = "";
  }

  AttributeLevel get level => _level;

  String get attribute => _attribute;

  String get value => _value;

  int get type => _type;

  bool hasValue() {
    return value.isNotEmpty;
  }

  @override
  String toString() {
    return "${String.fromCharCode(type)}=$attribute:$value";
  }

}