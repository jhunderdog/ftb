import 'package:get/get.dart';

import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_America': {'hello': 'Hello'},
        'korean_Korea': {'hello': '안녕'},
        'chinese_China': {'hello': 'NiHao'}
      };
}
