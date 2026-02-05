enum ElementType {
  character,
  clue,
  enigma,
  location;

  String get value {
    switch (this) {
      case ElementType.character:
        return 'character';
      case ElementType.clue:
        return 'clue';
      case ElementType.enigma:
        return 'enigma';
      case ElementType.location:
        return 'location';
    }
  }

  static ElementType fromString(String value) {
    switch (value.toLowerCase()) {
      case 'character':
      case 'characters':
        return ElementType.character;
      case 'clue':
      case 'clues':
        return ElementType.clue;
      case 'enigma':
      case 'enigmas':
        return ElementType.enigma;
      case 'location':
      case 'locations':
        return ElementType.location;
      default:
        throw ArgumentError('Unknown element type: $value');
    }
  }
}