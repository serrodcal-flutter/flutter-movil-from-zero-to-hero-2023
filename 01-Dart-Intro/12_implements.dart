void main(List<String> args) {
  final windPlant = WindPlant(intialEnergy: 100);
  final nuclearPlant = NuclearPlant(energyLeft: 1000);

  print('wind: ${chargePhone(windPlant)}');
  print('wind: ${chargePhone(nuclearPlant)}');
}

double chargePhone(EnergyPlant plant) {
  if (plant.energyLeft < 10) throw Exception('Not enough energy');

  return plant.energyLeft - 10;
}

enum PlantType { nuclear, wind, hydraulic }

abstract class EnergyPlant {
  double energyLeft;
  final PlantType type;

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

// Partial heritance, to avoid getting all from super
class NuclearPlant implements EnergyPlant {
  @override
  double energyLeft;

  @override
  final PlantType type = PlantType.nuclear;

  NuclearPlant({required this.energyLeft});

  @override
  void consumedEnergy(double amount) {
    energyLeft -= (amount * 0.5);
  }
}
