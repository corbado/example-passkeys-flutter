import 'package:flutter/foundation.dart';

// if you want to override the used projectID change this
const PROJECT_ID = "";

String getProjectID() {
  if (PROJECT_ID.isNotEmpty) {
    return PROJECT_ID;
  }

  // These are default values
  if (kIsWeb) {
    return 'pro-8751299119685489253';
  } else {
    return 'pro-4268394291597054564';
  }
}
