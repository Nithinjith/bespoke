import 'package:bespoke/core/utils/extension_functions.dart';
import 'package:bespoke/features/home/data/entities/project_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../../employees/data/entities/user_model.dart';

final projectNameProvider = FutureProvider.family.autoDispose<String, String>((ref, projectId) async {
  final doc = await projectRef.doc(projectId).get();
  return doc.exists ? doc.data?.name?? 'Unknown Project456' : 'Unknown123 Project';
});


class FinanceListTile extends ConsumerWidget {
  final UserFinance finance;

  const FinanceListTile({super.key, required this.finance});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final projectNameAsync = ref.watch(projectNameProvider(finance.projectId));

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 3,
      child: ListTile(
        contentPadding: const EdgeInsets.all(16),
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          radius: 24,
          child: Text(
            "₹${finance.amount.toStringAsFixed(0)}",
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        title: projectNameAsync.when(
          data: (name) => Text(name, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          loading: () => const CircularProgressIndicator(),
          error: (_, __) => const Text('Error loading project'),
        ),
        subtitle: Text(
          finance.createdAt.toFormattedDate(),
          style: TextStyle(color: Colors.grey[600], fontSize: 14),
        ),
        // trailing: Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey[600]),
      ),
    );
  }
}
