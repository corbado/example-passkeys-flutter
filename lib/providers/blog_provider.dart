import 'package:flutter_riverpod/flutter_riverpod.dart';

final blogProvider = StateProvider<List<String>>((ref) => [
  'https://www.corbado.com/blog/windows-managing-passkeys',
  'https://www.corbado.com/blog/passkeys-nextauth',
  'https://www.corbado.com/blog/native-app-passkeys',
  'https://www.corbado.com/blog/samsung-passkeys',
  'https://www.corbado.com/blog/adobe-passkeys-best-practices-analysis',
  'https://www.corbado.com/blog/windows-slow-passkey-adoption-rollout-features',
  'https://www.corbado.com/blog/webauthn-resident-key-discoverable-credentials-passkeys',
  'https://www.corbado.com/blog/svelte-passkeys',
  'https://www.corbado.com/blog/uber-passkeys'
]);
