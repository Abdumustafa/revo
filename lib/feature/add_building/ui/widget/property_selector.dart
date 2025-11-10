import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:revo/feature/add_building/logic/property_selector_cubit.dart';

class PropertySelector extends StatelessWidget {
  const PropertySelector({
    super.key,
    required this.title,
    required this.subtitle,
    required this.options,
    this.onChanged,
  });

  final String title;
  final String subtitle;
  final List<String> options;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FieldSelectorCubit>(
      create: (_) => FieldSelectorCubit(options: options),
      child: BlocConsumer<FieldSelectorCubit, FieldSelectorState>(
        listener: (context, state) {
          if (state is FieldSelectorChanged) {
            if (onChanged != null) onChanged!(state.selected);
          }
        },
        builder: (context, state) {
          final cubit = context.read<FieldSelectorCubit>();
          final display =
              state is FieldSelectorChanged ? state.selected : subtitle;
          final isSelected = state is FieldSelectorChanged;

          return Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                GestureDetector(
                  onTap: () => cubit.showSelectionSheet(context),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: Colors.grey[200],
                    ),
                    height: 50,
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Text(
                          display,
                          style: TextStyle(
                            color: isSelected ? Colors.black : Colors.grey,
                            fontSize: 16,
                          ),
                        ),
                        const Spacer(),
                        const Icon(Icons.arrow_drop_down_sharp),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
