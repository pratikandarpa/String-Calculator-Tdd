int add(String numbers) {
  if (numbers.trim().isEmpty) return 0;

  numbers = numbers.replaceAll('\n', ',');
  final parts = numbers.split(',');
  final parsed = <int>[];

  for (var part in parts) {
    if (part.trim().isEmpty) continue;

    final n = int.parse(part.trim());
    if (n < 0) {
      throw ArgumentError('Negatives not allowed: $n');
    }
    parsed.add(n);
  }

  return parsed.fold(0, (sum, n) => sum + n);
}
