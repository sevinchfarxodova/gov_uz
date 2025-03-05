import 'package:flutter/material.dart';
import '../../../../constats/appcolors.dart';

class EventsHeader extends StatelessWidget {
  const EventsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
              Text(
                "Barcha voqealar",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(width: 4),
              const Icon(
                Icons.arrow_circle_right_outlined,
                color: Colors.black87,
                size: 25,
              ),

        ],
      ),
    );
  }
}
