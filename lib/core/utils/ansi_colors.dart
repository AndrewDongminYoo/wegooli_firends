/// List ANSI colors codes available
enum AnsiColor {
  // Regular AnsiColors
  green('\x1B[0;32m'),
  blue('\x1B[0;34m'),
  purple('\x1B[0;35m'),

  // Bold
  boldRed('\x1B[1;31m'),
  boldGreen('\x1B[1;32m'),
  boldYellow('\x1B[1;33m'),
  boldBlue('\x1B[1;34m'),
  boldPurple('\x1B[1;35m'),
  boldCyan('\x1B[1;36m'),
  boldWhite('\x1B[1;37m'),

  // High Intensity Background
  highIntensityBackgroundRed('\x1B[0;101m'),
  highIntensityBackgroundGreen('\x1B[0;102m'),

  // Reset
  reset('\x1B[0m');

  /// Generative constructor
  const AnsiColor(this._ansiCode);

  /// ANSI code for a color
  final String _ansiCode;

  /// A string representation of this object.
  @override
  String toString() => _ansiCode;
}
