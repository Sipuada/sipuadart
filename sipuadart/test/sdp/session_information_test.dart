import 'package:flutter_test/flutter_test.dart';
import 'package:sipuadart/sdp/protocol_version.dart';
import 'package:sipuadart/sdp/session_information.dart';
import 'package:sipuadart/sdp/session_name.dart';

void main() {

  const _typeS = 105;
  const _session = 'i';

  group("Session Information", () {

    test("compare session information type as decimal", () {
      expect(_session, String.fromCharCode(_typeS));
    });

    test('build a session information', () {
      final description = "<session information>";
      final sessionInformation = SessionInformation(description);
      expect(sessionInformation.description, description);
      expect(sessionInformation.type, _typeS);
      expect(sessionInformation.toString(), '$_session=$description');
    });

  });





}