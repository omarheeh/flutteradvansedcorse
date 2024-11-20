class AppValidation {
  static String? emailValidation(String? email) {
    if (email == null) {
      return "Email is Required";
    }
    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );
    bool isEmail = emailRegex.hasMatch(email);
    return isEmail ? null : "This Email is not valid";
  }

  static String? passwordValidation(String? password) {
    if (password == null) {
      return "Password is Required";
    }

    final passwordRegex = RegExp(
      r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$',
    );

    bool isPassword = passwordRegex.hasMatch(password);
    return isPassword ? null : "This Password is not valid";
  }
}
