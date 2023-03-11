import 'package:riverpod_annotation/riverpod_annotation.dart';

import '/services/riverpod/riverpod.dart';

part 'home_provider.g.dart';

@riverpod
void homePage(
  HomePageRef ref, {
  bool isDebug = false,
}) {
  if (isDebug) {
    final hash = ref.formatHash;

    ProviderHelper.onInit('HomePageProvider', hash);
    ref.onResume(() => ProviderHelper.onWatch('HomePageProvider', hash));
    ref.onDispose(() => ProviderHelper.onDispose('HomePageProvider', hash));
  }
}
