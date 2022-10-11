library valueber_extension;

class NumberExtension {
  static String internationSystem(value, {numbersAfterPoint = 1}) {
    if (value > 999 && value < 999999) {
      return "${(value / 1000).toStringAsFixed((value / 1000).truncateToDouble() == (value / 1000) ? 0 : numbersAfterPoint)} K";
    } else if (value > 999999 && value < 999999999) {
      return "${(value / 1000000).toStringAsFixed((value / 1000000).truncateToDouble() == (value / 1000000) ? 0 : numbersAfterPoint)} Million";
    } else if (value > 999999999 && value < 999999999999) {
      return "${(value / 1000000000).toStringAsFixed((value / 1000000000).truncateToDouble() == (value / 1000000000) ? 0 : numbersAfterPoint)} Billion";
    } else if (value > 999999999999 && value < 999999999999999) {
      return "${(value / 1000000000000).toStringAsFixed((value / 1000000000000).truncateToDouble() == (value / 1000000000000) ? 0 : numbersAfterPoint)} Trillion";
    } else if (value > 999999999999999) {
      return "${(value / 1000000000000000).toStringAsFixed((value / 1000000000000000).truncateToDouble() == (value / 1000000000000000) ? 0 : numbersAfterPoint)} Quad Trillion";
    } else {
      return value.toString();
    }
  }

  static String indianSystem(value, {numbersAfterPoint = 1}) {
    if (value > 999 && value < 99999) {
      return "${(value / 1000).toStringAsFixed((value / 1000).truncateToDouble() == (value / 1000) ? 0 : numbersAfterPoint)} Thousand";
    } else if (value > 99999 && value < 9999999) {
      return "${(value / 100000).toStringAsFixed((value / 100000).truncateToDouble() == (value / 100000) ? 0 : numbersAfterPoint)} Lac";
    } else if (value > 999999 && value < 999999999) {
      return "${(value / 10000000).toStringAsFixed((value / 10000000).truncateToDouble() == (value / 10000000) ? 0 : numbersAfterPoint)} Crore";
    } else if (value > 999999999 && value < 99999999999) {
      return "${(value / 1000000000).toStringAsFixed((value / 1000000000).truncateToDouble() == (value / 1000000000) ? 0 : numbersAfterPoint)} Arab";
    } else if (value > 99999999999) {
      return "${(value / 100000000000).toStringAsFixed((value / 100000000000).truncateToDouble() == (value / 100000000000) ? 0 : numbersAfterPoint)} Kharab";
    } else {
      return value.toString();
    }
  }
}
