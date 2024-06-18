import 'package:flutter/material.dart';

class CustomRadio extends StatelessWidget {
  Widget title;
  int value;
  int groupValue;
  Function(int value) onChanged;

  CustomRadio({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
    required this.groupValue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onChanged(value);
      },
      child: Row(
        children: [
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              border: value == groupValue
                  ? Border.all(width: 7, color: Colors.green)
                  : Border.all(width: 2, color: Colors.grey),
            ),
          ),
          const SizedBox(width: 16),
          title,
        ],
      ),
    );
  }
}
