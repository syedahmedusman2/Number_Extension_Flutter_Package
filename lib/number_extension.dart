library number_extension;

class NumberExtension {
  String internationSystem(num) {
    if (num > 999 && num < 999999) {
      return "${(num / 1000).toStringAsFixed(1)} K";
    } else if (num > 999999 && num < 999999999) {
      return "${(num / 1000000000).toStringAsFixed(1)} Million";
    } else if (num > 999999999 && num < 999999999999) {
      return "${(num / 1000000000000).toStringAsFixed(1)} Billion";
    } else if (num > 999999999999 && num < 999999999999999) {
      return "${(num / 1000000000000000).toStringAsFixed(1)} Trillion";
    } else if (num > 999999999999999 && num < 999999999999999999) {
      return "${(num / 1000000000000000000).toStringAsFixed(1)} Trillion";
    } else {
      return num.toString();
    }
  }

  String indianSystem(num) {
    if (num > 999 && num < 99999) {
      return "${(num / 1000).toStringAsFixed(1)} Thousand";
    } else if (num > 99999 && num < 9999999) {
      return "${(num / 100000).toStringAsFixed(1)} Lac";
    } else if (num > 999999 && num < 999999999) {
      return "${(num / 10000000).toStringAsFixed(1)} Crore";
    } else if (num > 999999999 && num < 99999999999) {
      return "${(num / 1000000000).toStringAsFixed(1)} Arab";
    } else if (num > 99999999999 && num < 9999999999999) {
      return "${(num / 10000000000).toStringAsFixed(1)} Kharab";
    } else {
      return num.toString();
    }
  }
}
