import 'package:sipuadart/sdp/field.dart';

class SessionName implements Field {

  static const _s = 115;
  static const _defaultWhitespaceName = ' ';

  String _name = _defaultWhitespaceName;
  final int _type = _s;

  SessionName(this._name);

  SessionName.standard() : this(_defaultWhitespaceName);

  int get type => _type;

  String get name => _name;

  @override
  String toString() {
    return "${String.fromCharCode(type)}=$name";
  }

}