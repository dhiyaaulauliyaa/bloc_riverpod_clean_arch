import '../injection/service_locator.dart';
import 'messenger.dart';

mixin AppServices {
  static final _messenger = getIt<MessengerService>();

  MessengerService get msg => _messenger;
}

mixin AppMessengerService {
  static final _messenger = getIt<MessengerService>();

  MessengerService get msg => _messenger;
}
