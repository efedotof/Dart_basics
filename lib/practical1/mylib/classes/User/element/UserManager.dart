import 'dart:developer';

import '../user.dart';

class UserManager<T extends User> {
  List<T> users = [];

  void addUser(T user) {
    users.add(user);
  }

  void removeUser(T user) {
    users.remove(user);
  }

  void displayEmails() {
    for (var user in users) {
      if (user is AdminUser) {
        log(user.getMailSystem(), name: 'Email');
      } else {
        log(user.email, name: 'Email');
      }
    }
  }
}
