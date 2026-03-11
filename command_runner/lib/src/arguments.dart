enum OptionType{flag, option}

abstract class Arguments {
  String get name;
  String? get help;

  Object? get defautValur;
  String? get valueHelp;

  String get usage;
}

class Option extends Arguments{
  Option(
    this.name, {
      required this.type,
      this.help,
      this.abbr,
      this.defautValue,
      this.valueHelp,
    }
  );
  @override
  final String name;
  final OptionType type;
  @override
  final String? help;
  final String? abbr;
  @override
  final Object? defautValue;
  final String? valueHelp;
  @override
  String get usage{
    if (abbr != null){
      return '-$abbr, --$name: $help';
    }
    return '--$name: $help';
  }
}
abstract class Command extends Arguments{
  @override
  String get name;
  String get description;
  bool get requiresArgument => false;
  late CommandRunner runner;
  @override
  String? help;
  @override
  String? defautValue;
  @override
  String? valueHelp;
}