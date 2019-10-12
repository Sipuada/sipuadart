import 'package:sipuadart/sdp/field.dart';

class UniformResourceIdentifier implements Field {

  static const _u = 117;

  String _uri;
  final int _type = _u;

  UniformResourceIdentifier(this._uri);

  int get type => _type;

  String get uri => _uri;

  @override
  String toString() {
    return "${String.fromCharCode(type)}=$uri";
  }

}