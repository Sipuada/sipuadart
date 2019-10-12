import 'package:sipuadart/sdp/field.dart';

class SessionInformation implements Field {

  static const _i = 105;

  String _description;
  final int _type = _i;

  SessionInformation(this._description);

  int get type => _type;

  String get description => _description;

  @override
  String toString() {
    return "${String.fromCharCode(type)}=$description";
  }

}