import 'package:flutter_test/flutter_test.dart';
import 'package:sipuadart/sdp/protocol_version.dart';

void main() {

  const _typeV = 118;
  const _protocol = 'v';

  group("Protocol Version", () {

    test("compare attribute value as decimal", () {
      expect(_protocol, String.fromCharCode(_typeV));
    });

    test('build a standard protocol protocol_version', () {
      final protocolVersion = ProtocolVersion.standard();
      final version = 0;
      expect(protocolVersion.version, version);
      expect(protocolVersion.type, _typeV);
      expect(protocolVersion.toString(), '$_protocol=$version');
    });

    test('build a protocol protocol_version', () {
      final version = 1;
      final protocolVersion = ProtocolVersion(version);
      expect(protocolVersion.version, version);
      expect(protocolVersion.type, _typeV);
      expect(protocolVersion.toString(), '$_protocol=$version');
    });

  });





}