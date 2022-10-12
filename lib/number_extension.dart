library valueber_extension;

//We could simply use "${(value / 1000).toStringAsFixed(1)} K" like this but for controlling zero in the result, we are using the below condition;
class NumberExtension {
  static String internationSystem(value, {numbersAfterPoint = 1}) {
    if (double.parse(value.toString()) > 999 && double.parse(value.toString()) < 999999) {
      return "${(double.parse(value.toString()) / 1000).toStringAsFixed((double.parse(value.toString()) / 1000).truncateToDouble() == (double.parse(value.toString()) / 1000) ? 0 : numbersAfterPoint)} K";
    } else if (double.parse(value.toString()) > 999999 && double.parse(value.toString()) < 999999999) {
      return "${(double.parse(value.toString()) / 1000000).toStringAsFixed((double.parse(value.toString()) / 1000000).truncateToDouble() == (double.parse(value.toString()) / 1000000) ? 0 : numbersAfterPoint)} Million";
    } else if (double.parse(value.toString()) > 999999999 && double.parse(value.toString()) < 999999999999) {
      return "${(double.parse(value.toString()) / 1000000000).toStringAsFixed((double.parse(value.toString()) / 1000000000).truncateToDouble() == (double.parse(value.toString()) / 1000000000) ? 0 : numbersAfterPoint)} Billion";
    } else if (double.parse(value.toString()) > 999999999999 && double.parse(value.toString()) < 999999999999999) {
      return "${(double.parse(value.toString()) / 1000000000000).toStringAsFixed((double.parse(value.toString()) / 1000000000000).truncateToDouble() == (double.parse(value.toString()) / 1000000000000) ? 0 : numbersAfterPoint)} Trillion";
    } else if (double.parse(value.toString()) > 999999999999999) {
      return "${(double.parse(value.toString()) / 1000000000000000).toStringAsFixed((double.parse(value.toString()) / 1000000000000000).truncateToDouble() == (value / 1000000000000000) ? 0 : numbersAfterPoint)} Quad Trillion";
    } else {
      return value.toString();
    }
  }

  static String indianSystem(value, {numbersAfterPoint = 1}) {
    if (double.parse(value.toString()) > 999 && double.parse(value.toString()) < 99999) {
      return "${(double.parse(value.toString()) / 1000).toStringAsFixed((double.parse(value.toString()) / 1000).truncateToDouble() == (double.parse(value.toString()) / 1000) ? 0 : numbersAfterPoint)} Thousand";
    } else if (double.parse(value.toString()) > 99999 && double.parse(value.toString()) < 9999999) {
      return "${(double.parse(value.toString()) / 100000).toStringAsFixed((double.parse(value.toString()) / 100000).truncateToDouble() == (double.parse(value.toString()) / 100000) ? 0 : numbersAfterPoint)} Lac";
    } else if (double.parse(value.toString()) > 999999 && double.parse(value.toString()) < 999999999) {
      return "${(double.parse(value.toString()) / 10000000).toStringAsFixed((double.parse(value.toString()) / 10000000).truncateToDouble() == (double.parse(value.toString()) / 10000000) ? 0 : numbersAfterPoint)} Crore";
    } else if (double.parse(value.toString()) > 999999999 && double.parse(value.toString()) < 99999999999) {
      return "${(double.parse(value.toString()) / 1000000000).toStringAsFixed((double.parse(value.toString()) / 1000000000).truncateToDouble() == (double.parse(value.toString()) / 1000000000) ? 0 : numbersAfterPoint)} Arab";
    } else if (double.parse(value.toString()) > 99999999999) {
      return "${(double.parse(value.toString()) / 100000000000).toStringAsFixed((double.parse(value.toString()) / 100000000000).truncateToDouble() == (double.parse(value.toString()) / 100000000000) ? 0 : numbersAfterPoint)} Kharab";
    } else {
      return value.toString();
    }
  }
}
