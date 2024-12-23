class Option {
  final String label;
  final String text;
  final bool isSelected;

  Option({
    required this.label,
    required this.text,
    this.isSelected = false,
  });
}