import 'dart:developer';

enum LogColor {
  red,
  green,
  yellow,
  blue,
  magenta,
  cyan,
  white,
  grey,
  lightRed,
  lightYellow,
  lightMagenta,
}

class Log {
  static String getColor(LogColor color) {
    switch (color) {
      case LogColor.red:
        return '\x1B[31m';
      case LogColor.green:
        return '\x1B[32m';
      case LogColor.yellow:
        return '\x1B[33m';
      case LogColor.blue:
        return '\x1B[34m';
      case LogColor.magenta:
        return '\x1B[35m';
      case LogColor.cyan:
        return '\x1B[36m';
      case LogColor.white:
        return '\x1B[37m';
      case LogColor.grey:
        return '\x1B[90m';
      case LogColor.lightRed:
        return '\x1B[91m';
      case LogColor.lightYellow:
        return '\x1B[93m';
      case LogColor.lightMagenta:
        return '\x1B[95m';
    }
  }

  static void write(
    dynamic text, {
    String type = 'Log',
    LogColor? color = LogColor.blue,
  }) {
    String textColor = color == null ? '' : getColor(color);
    log(
      '$textColor$text',
      name: type.toUpperCase(),
      time: DateTime.now(),
    );
  }

  static void error(
    dynamic text, {
    LogColor color = LogColor.red,
    String type = 'error',
  }) {
    log(
      '${getColor(color)}$text',
      name: type.toUpperCase(),
      time: DateTime.now(),
    );
  }

  static void warning(
    dynamic text, {
    LogColor color = LogColor.yellow,
    String type = 'warning',
  }) {
    log(
      '${getColor(color)}$text',
      name: type.toUpperCase(),
      time: DateTime.now(),
    );
  }

  static void success(
    dynamic text, {
    LogColor color = LogColor.green,
    String type = 'success',
  }) {
    log(
      '${getColor(color)}$text',
      name: type.toUpperCase(),
      time: DateTime.now(),
    );
  }

  static void soft(
    dynamic text, {
    LogColor color = LogColor.grey,
    String type = 'req',
  }) {
    log(
      '${getColor(color)}$text',
      name: type.toUpperCase(),
      time: DateTime.now(),
    );
  }

  static void divider({
    dynamic text = '----------------',
    String type = '',
  }) {
    log(
      '${getColor(LogColor.grey)}$text',
      name: type.toUpperCase(),
      time: DateTime.now(),
    );
  }
}
