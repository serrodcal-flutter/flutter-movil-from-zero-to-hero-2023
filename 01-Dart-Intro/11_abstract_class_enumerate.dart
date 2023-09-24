void main(List<String> args) {
  final windPlant = WindPlant(intialEnergy: 100);

  print('wind: ${chargePhone(windPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('Not enough energy');

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, hydraulic }

abstract class EnergyPlant {
  double energyLeft;
  PlantType type;

  EnergyPlant({required this.energyLeft, required this.type});

  void consumedEnergy(double amount);
}

class WindPlant extends EnergyPlant {
  WindPlant({required double intialEnergy})
      : super(energyLeft: intialEnergy, type: PlantType.wind);

  @override
  void consumedEnergy(double amount) {
    energyLeft -= amount;
  }
}
