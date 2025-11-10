import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

@immutable
abstract class FieldSelectorState {}

class FieldSelectorInitial extends FieldSelectorState {}

class FieldSelectorChanged extends FieldSelectorState {
  final String selected;
  FieldSelectorChanged(this.selected);
}

class FieldSelectorCubit extends Cubit<FieldSelectorState> {
  final List<String> options;
  FieldSelectorCubit({required this.options}) : super(FieldSelectorInitial());

  String? selected;

  void showSelectionSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (ctx) {
        return ListView(
          shrinkWrap: true,
          children: options.map((item) {
            return ListTile(
              title: Center(
                  child: Text(item, style: const TextStyle(fontSize: 18))),
              onTap: () {
                select(item);
                Navigator.pop(ctx);
              },
            );
          }).toList(),
        );
      },
    );
  }

  void select(String v) {
    selected = v;
    emit(FieldSelectorChanged(v));
  }
}
