import 'package:flutter_test/flutter_test.dart';
import 'package:sipuadart/sdp/protocol_version/protocol_version.dart';
import 'package:sipuadart/sdp/session_name/session_name.dart';

void main() {

  const _typeS = 115;
  const _session = 's';
  const _whitespace = ' ';

  group("Session Name", () {

    test("compare session type as decimal", () {
      expect(_session, String.fromCharCode(_typeS));
    });

    test('build a standard session name', () {
      final sessionName = SessionName.standard();
      final defaultName = _whitespace;
      expect(sessionName.name, defaultName);
      expect(sessionName.type, _typeS);
      expect(sessionName.toString(), '$_session=$_whitespace');
    });

    test('build a protocol session name', () {
      final name = "<session name>";
      final sessionName = SessionName(name);
      expect(sessionName.name, name);
      expect(sessionName.type, _typeS);
      expect(sessionName.toString(), '$_session=$name');
    });

  });





}