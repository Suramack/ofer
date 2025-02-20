abstract class RegularExpression {
  static final email = RegExp(r'^[^@]+@[^@]+\.[^@]+$');
  static final emailOrPhone = RegExp(r'(^\d{10}$)|(^[^@]+@[^@]+\.[^@]+$)');
}
