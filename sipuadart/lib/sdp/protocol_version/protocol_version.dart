import 'package:sipuadart/sdp/field.dart';

class ProtocolVersion implements Field {

  static const _v = 118;
  static const _defaultVersion = 0;

  int _version = _defaultVersion;
  final int _type = _v;

  ProtocolVersion(this._version);

  ProtocolVersion.standard() : this(_defaultVersion);

  int get type => _type;

  int get version => _version;

  @override
  String toString() {
    return "${String.fromCharCode(type)}=$version";
  }

}