import 'package:flutter/material.dart';
import 'package:run_app_ui/remote_service.dart';
import 'package:run_app_ui/user_model.dart';

class UserProvider extends ChangeNotifier {
  //
  final _service = RemoteService();
  late User user = User();

  bool isLoading = false;

  Future<void> getData() async {
    try {
      setLoading(true);

      final user = await _service.getUser();
      debugPrint(user?.avatar);
      setUser(user);
    } catch (e) {
      handleError(e);
    } finally {
      setLoading(false);
      debugPrint('user data loaded');
    }
  }

  void setLoading(bool loading) {
    isLoading = loading;
    notifyListeners();
  }

  void setUser(dynamic user) {
    this.user = user;
    notifyListeners();
  }

  void handleError(dynamic error) {
    debugPrint(error.toString());
  }
}
