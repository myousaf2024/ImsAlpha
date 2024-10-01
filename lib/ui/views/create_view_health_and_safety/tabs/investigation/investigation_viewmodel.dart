import 'package:stacked/stacked.dart';

class InvestigationViewModel extends BaseViewModel {
  int selectedRadioIndex1 = 0;

  void setSelectedRadioIndex1(int index) {
    selectedRadioIndex1 = index;
    notifyListeners();
  }

  String teamMember = 'Option 1';
  List<String> teamOption = [
    'Option 1',
    'Option 2',
    'Option 3',
    'Option 4',
    'Option 5',
  ];

  List<String> potentialIncident = [
    'Abduction / Kidnapping / Unlawfully Detained',
    'Armed Assault/Armed Robbery/Hi-Jacking',
    'Caught Between or Under',
    'Caught In (Pinch and Nip Points',
    'Caught On (Snagged, Hung)',
    'Contact With (Electricity, Heat, Cold, Radiation, Caustics,Toxics, Biological, Noise)',
    'Disease',
    'Explosion/Fire',
    'Fall From Elevation to Lower Level',
    'Fall on Same Level (Slip and Fall, Trip Over)',
    'Fraud/Bribery/Blackmail',
    'Ingestion/Inhalation/Absorption',
    'Media Exposure',
    'Misplaced/Mislaid',
    "Overstress, Overpressure, Overexertion, Overextension,Overexposure, Ergonomic",
    'Regulatory/Contract/License Violation',
    'Struck Against (Running or Bumping Into)',
    'Struck By (Hit By Moving Object)',
    'Theft/Burglary/Vandalism',
    'Unplanned/Undesired Energy Release',
    'Unplanned/Undesired Release to the Environment'
  ];

  void changeUserinfo1(String? value) {
    teamMember = value ?? teamOption[0];
    notifyListeners();
  }
}
