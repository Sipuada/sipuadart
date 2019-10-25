import 'package:flutter_test/flutter_test.dart';
import 'package:sipuadart/sdp/attributes/either/inactive.dart';
import 'package:sipuadart/sdp/attributes/either/language.dart';
import 'package:sipuadart/sdp/attributes/either/receive_only.dart';
import 'package:sipuadart/sdp/attributes/either/send_only.dart';
import 'package:sipuadart/sdp/attributes/either/send_receive.dart';
import 'package:sipuadart/sdp/attributes/either/session_description_protocol_language.dart';
import 'package:sipuadart/sdp/attributes/media/flight_message_transfer_protocol.dart';
import 'package:sipuadart/sdp/attributes/media/framerate.dart';
import 'package:sipuadart/sdp/attributes/media/orientation.dart';
import 'package:sipuadart/sdp/attributes/media/orientation_type.dart';
import 'package:sipuadart/sdp/attributes/media/quality.dart';
import 'package:sipuadart/sdp/attributes/media/real_time_transport_protocol_map.dart';
import 'package:sipuadart/sdp/attributes/session/category.dart';
import 'package:sipuadart/sdp/attributes/session/charset.dart';
import 'package:sipuadart/sdp/attributes/session/conference.dart';
import 'package:sipuadart/sdp/attributes/session/conference_type.dart';
import 'package:sipuadart/sdp/attributes/session/keywords.dart';
import 'package:sipuadart/sdp/attributes/media/maximum_packet_time.dart';
import 'package:sipuadart/sdp/attributes/media/packet_time.dart';
import 'package:sipuadart/sdp/attributes/session/tool.dart';

void main() {

  const _typeA = 97;
  const _attribute = 'a';

  test("compare attribute value as decimal", () {
    expect(_attribute, String.fromCharCode(_typeA));
  });

  group("Attribute - Session Level - Category", () {

    test('build an attribute category', () {
      final cat = "cat";
      final value = "<category>";
      final attribute = Category(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, cat);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$cat:$value');
    });

  });

  group("Attribute - Session Level - Charset", () {

    final charset =  "charset";

    test('build a standard attribute charset', () {

      final value = "ISO-10646";
      final attribute = Charset.standard();
      expect(attribute.type, _typeA);
      expect(attribute.attribute, charset);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$charset:$value');
    });

    test('build an attribute charset', () {
      final value = "<character set>";
      final attribute = Charset(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, charset);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$charset:$value');
    });

  });

  group("Attribute - Session Level - Conference (type)", () {

    final type = "type";

    test('build a raw attribute conference (type)', () {
      final value = "<conference type>";
      final attribute = Conference(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, type);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$type:$value');
    });

    test('build an attribute conference (type) with conference type broadcast', () {
      final value = ConferenceType.broadcast;
      final broadcast = "broadcast";
      final attribute = Conference.withConferenceType(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, type);
      expect(attribute.value, broadcast);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$type:$broadcast');
    });

    test('build an attribute conference (type) with conference type meeting', () {
      final value = ConferenceType.meeting;
      final meeting = "meeting";
      final attribute = Conference.withConferenceType(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, type);
      expect(attribute.value, meeting);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$type:$meeting');
    });

    test('build an attribute conference (type) with conference type moderated', () {
      final value = ConferenceType.moderated;
      final moderated = "moderated";
      final attribute = Conference.withConferenceType(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, type);
      expect(attribute.value, moderated);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$type:$moderated');
    });

    test('build an attribute conference (type) with conference type test', () {
      final value = ConferenceType.test;
      final test = "test";
      final attribute = Conference.withConferenceType(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, type);
      expect(attribute.value, test);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$type:$test');
    });

    test('build an attribute conference (type) with conference type H332', () {
      final value = ConferenceType.H332;
      final h332 = "H332";
      final attribute = Conference.withConferenceType(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, type);
      expect(attribute.value, h332);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$type:$h332');
    });

  });

  group("Attribute - Session Level - Keywords", () {

    test('build an attribute keyword', () {
      final keywds =  "keywds";
      final value = "<keywords>";
      final attribute = Keywords(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, keywds);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$keywds:$value');
    });

  });

  group("Attribute - Session Level - Tool", () {

    test('build an attribute tool', () {
      final tool = "tool";
      final value = "<name and version of tool>";
      final attribute = Tool(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, tool);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$tool:$value');
    });

  });





  group("Attribute - Media Level - Flight Message Transfer Protocol", () {

    test('build an attribute flight message transfer protocol', () {
      final fmtp = "fmtp";
      final value = "<format> <format specific parameters>";
      final attribute = FlightMessageTransferProtocol(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, fmtp);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$fmtp:$value');
    });

  });

  group("Attribute - Media Level - Framerate", () {

    test('build an attribute framerate', () {
      final framerate = "framerate";
      final value = "<frame rate>";
      final attribute = FrameRate(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, framerate);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$framerate:$value');
    });

  });

  group("Attribute - Media Level - Maximum Packet Time", () {

    final maxptime = "maxptime";

    test('build an attribute maximum packet time', () {
      final value = "<maximum packet time>";
      final attribute = MaximumPacketTime(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, maxptime);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$maxptime:$value');
    });

  });

  group("Attribute - Media Level - Orientation", () {

    final orient = "orient";

    test('build a raw attribute orientation', () {
      final value = "<orientation>";
      final attribute = Orientation(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, orient);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$orient:$value');
    });

    test('build a attribute orientation with orientation type portrait', () {
      final value = OrientationType.portrait;
      final portrait = "portrait";
      final attribute = Orientation.withOrientationType(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, orient);
      expect(attribute.value, portrait);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$orient:$portrait');
    });

    test('build a attribute orientation with orientation type landscape', () {
      final value = OrientationType.landscape;
      final landscape = "landscape";
      final attribute = Orientation.withOrientationType(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, orient);
      expect(attribute.value, landscape);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$orient:$landscape');
    });

    test('build a attribute orientation with orientation type seascape', () {
      final value = OrientationType.seascape;
      final seascape = "seascape";
      final attribute = Orientation.withOrientationType(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, orient);
      expect(attribute.value, seascape);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$orient:$seascape');
    });

  });


  group("Attribute - Media Level - Packet Time", () {

    final ptime = "ptime";

    test('build an attribute packet time', () {
      final value = "<packet time>";
      final attribute = PacketTime(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, ptime);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$ptime:$value');
    });

  });

  group("Attribute - Media Level - Quality", () {

    final quality = "quality";

    test('build an attribute packet time', () {
      final value = "<quality>";
      final attribute = Quality(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, quality);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$quality:$value');
    });

  });

  group("Attribute - Media Level - Real Time Transport Protocol Map", () {

    final rtpmap = "rtpmap";

    test('build an attribute packet time', () {
      final value = "<payload type> <encoding name>/<clock rate> [/<encoding parameters>]";
      final attribute = RealTimeTransportProtocolMap(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, rtpmap);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$rtpmap:$value');
    });

  });




  group("Attribute - Either Level - Inactive", () {

    test('build an attribute inactive', () {
      final inactive = "inactive";
      final value = "";
      final attribute = Inactive.empty();
      expect(attribute.type, _typeA);
      expect(attribute.attribute, inactive);
      expect(attribute.value, value);
      expect(attribute.hasValue(), false);
      expect(attribute.toString(), '$_attribute=$inactive');
    });

  });

  group("Attribute - Either Level - Language", () {

    test('build an attribute language', () {
      final lang = "lang";
      final value = "<language tag>";
      final attribute = Language(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, lang);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$lang:$value');
    });

  });

  group("Attribute - Either Level - Receive Only", () {

    test('build an attribute receive only', () {
      final recvonly = "recvonly";
      final value = "";
      final attribute = ReceiveOnly.empty();
      expect(attribute.type, _typeA);
      expect(attribute.attribute, recvonly);
      expect(attribute.value, value);
      expect(attribute.hasValue(), false);
      expect(attribute.toString(), '$_attribute=$recvonly');
    });

  });

  group("Attribute - Either Level - Send Only", () {

    test('build an attribute send only', () {
      final sendonly = "sendonly";
      final value = "";
      final attribute = SendOnly.empty();
      expect(attribute.type, _typeA);
      expect(attribute.attribute, sendonly);
      expect(attribute.value, value);
      expect(attribute.hasValue(), false);
      expect(attribute.toString(), '$_attribute=$sendonly');
    });

  });

  group("Attribute - Either Level - Send Receive", () {

    test('build an attribute send receive', () {
      final sendrecv = "sendrecv";
      final value = "";
      final attribute = SendReceive.empty();
      expect(attribute.type, _typeA);
      expect(attribute.attribute, sendrecv);
      expect(attribute.value, value);
      expect(attribute.hasValue(), false);
      expect(attribute.toString(), '$_attribute=$sendrecv');
    });

  });

  group("Attribute - Either Level - Session Description Protocol Language", () {

    test('build an attribute send session description protocol language', () {
      final sdplang = "sdplang";
      final value = "<language tag>";
      final attribute = SessionDescriptionProtocolLanguage(value);
      expect(attribute.type, _typeA);
      expect(attribute.attribute, sdplang);
      expect(attribute.value, value);
      expect(attribute.hasValue(), true);
      expect(attribute.toString(), '$_attribute=$sdplang:$value');
    });

  });


}
