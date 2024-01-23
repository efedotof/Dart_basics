import '../user.dart';

class AdminUser extends User with MailSystemMixin {
  AdminUser(String email) : super(email);
}