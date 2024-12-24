class Option {
  final String label;
  final String text;
  bool isSelected;
  final int value;

  Option({
    required this.label,
    required this.text,
    this.isSelected = false,
    required this.value,
  });
}
