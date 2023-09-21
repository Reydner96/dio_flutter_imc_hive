import 'package:hive/hive.dart';

part 'imc.g.dart';

@HiveType(typeId: 0)
class IMC extends HiveObject {
  @HiveField(0)
  final double weight;

  @HiveField(1)
  final double height;

  @HiveField(2)
  final double bmi;

  IMC({required this.weight, required this.height})
      : bmi = weight / (height * height);

  double calculate() {}
}
