import 'package:get/get.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ko_KR': {
          'greeting': '안녕하세요',
        },
        'ja_JP': {
          'greeting': 'こんにちは',
        },
        'en_US': {
          'greeting': 'Assalamualaikum',
          'user': 'Moslem Brother',
          'back': 'back',
          'prayer time': 'prayer time',
          'shalat motivation': 'Different human who have iman between either are leaving shalat',
        },
        'id': {
          'greeting': 'Assalamualaikum',
          'user': 'Saudara Muslim',
          'back': 'Kembali',
          'prayer time': 'Jadwal shalat',
          'shalat motivation': 'Yang membedakan antara orang beriman dengan tidak beriman adalah meninggalkan salat.',
        },
      };
}