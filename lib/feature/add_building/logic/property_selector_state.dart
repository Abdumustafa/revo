import 'package:meta/meta.dart';

@immutable
abstract class PropertySelectorState {}

class PropertySelectorInitial extends PropertySelectorState {}

class PropertySelectorChanged extends PropertySelectorState {
  final String selectedType;
  PropertySelectorChanged(this.selectedType);
}
