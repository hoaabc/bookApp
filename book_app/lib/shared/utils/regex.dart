class Regex {
  static bool isEmail(String email) {
    final RegExp regExp =
        RegExp(r'\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*');
    return regExp.hasMatch(email);
  }
}
