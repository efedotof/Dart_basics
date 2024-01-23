class User {
  String email;

  User(this.email);
}

mixin MailSystemMixin on User {
  String getMailSystem() {
    return email.split('@')[1];
  }
}
