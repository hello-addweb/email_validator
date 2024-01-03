library email_validator_package;

/// A EmailValidator.
class EmailValidator {
  EmailValidator();
  /// Returns true , false
  /// true if email is correct and false for incorrect.
  bool validateEmail(String email) {
    // Regular expression pattern for email validation
    const pattern =
        r'^[\w-]+(\.[\w-]+)*@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*(\.[a-zA-Z]{2,})$';
    final regex = RegExp(pattern);

    return regex.hasMatch(email);
  }
}
