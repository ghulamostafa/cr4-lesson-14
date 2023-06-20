import 'package:get/get.dart';

class MyTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'hello': 'Hello World',
          'message': 'You have pushed the button this many times:'
        },
        'de_DE': {
          'hello': 'Hallo Welt',
          'message': 'Du hast den Knopf so oft gedrückt:'
        },
        'ar_SA': {
          'hello': 'مرحبا بالعالم',
          'message': 'لقد دفعت الزر هذا العدد من المرات:'
        }
      };
}
