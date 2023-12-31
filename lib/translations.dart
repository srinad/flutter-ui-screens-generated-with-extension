import 'package:get/get.dart';

class TranslationService extends Translations {
  static TranslationService? _instance;
  static TranslationService get instance {
    if (_instance != null) return _instance!;
    _instance = TranslationService._init();
    return _instance!;
  }

  TranslationService._init();

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'profilescreen': 'Profilescreen',
          'welcome_to_updateprofile_page': 'Welcome To Updateprofile Page',
          'updateprofile_page': 'Updateprofile Page',
          'edit_profile': 'Edit Profile',
          'john.doe@example.com': 'John.doe@example.com',
          'john_doe': 'John Doe',
          'welcome_to_changepassword_page': 'Welcome To Changepassword Page',
          'hello_world': 'Hello World',
          'changepassword_page': 'Changepassword Page',
          'homescreen': 'Homescreen',
          'block_4': 'Block 4',
          'block_3': 'Block 3',
          'block_2': 'Block 2',
          'block_1': 'Block 1',
        },
      };
}
