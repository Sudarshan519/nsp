import 'package:wallet_app/core/analytcs/analytics_service.dart';
import 'package:wallet_app/core/analytcs/firebase_event_constants.dart';
import 'package:wallet_app/core/notification/push_notification_manager.dart';
import 'package:wallet_app/core/usecase/usecase.dart';
import 'package:wallet_app/features/auth/domain/usecase/logout_user.dart';
import 'package:wallet_app/injections/injection.dart';
import 'package:wallet_app/main.dart';
import 'package:wallet_app/ui/routes/routes.gr.dart';
import 'package:auto_route/auto_route.dart';

class SessionHandler {
  static void logout() {
    AnalyticsService.logEvent(FirebaseEvents.LOGOUT);
    getIt<LogoutUser>().call(NoParams());
    appRouter.navigatorKey.currentContext?.router.replace(const LoginRoute());
    getIt<PushNotificationManager>().removeToken();
  }
}
