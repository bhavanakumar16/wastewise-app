import 'package:flutter/material.dart';
import 'package:wastewise_app/db/db_config.dart';

class GarbageStatusCard extends StatelessWidget {
  const GarbageStatusCard({
    super.key,
    required this.trashCanNumber,
    required this.status,
  });
  final String trashCanNumber;
  final String status;
  @override
  Widget build(BuildContext context) {
    getData();
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Color(0xfe507687).withOpacity(0.7),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Can number: $trashCanNumber",
            style: Theme.of(context).textTheme.labelLarge,
          ),
          Text(
            "Status: $status",
            style: Theme.of(context).textTheme.bodyMedium,
          )
        ],
      ),
    );
  }
}
