import 'package:bespoke/features/employee_details/presentation/add_finance_bottom_sheet.dart';
import 'package:bespoke/features/employees/data/entities/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

class AddWorkStatusBottomSheet extends ConsumerWidget {
  final String employeeId;

  const AddWorkStatusBottomSheet({
    super.key,
    required this.employeeId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    final selectedHours = ref.watch(selectedHoursProvider);
    final selectedProjectId = ref.watch(selectedProjectIdProvider);

    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          const Text(
            'Log Work Hours',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),

          // Date Selection
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Selected Date:', style: TextStyle(fontSize: 16)),
              ElevatedButton.icon(
                onPressed: () async {
                  final date = await showDatePicker(
                    context: context,
                    initialDate: selectedDate ?? DateTime.now(),
                    firstDate: DateTime(2020),
                    lastDate: DateTime(2030),
                  );
                  if (date != null) {
                    ref.read(selectedDateProvider.notifier).state = date;
                  }
                },
                icon: const Icon(Icons.calendar_today),
                label: Text(
                  selectedDate != null
                      ? DateFormat('MMM dd, yyyy').format(selectedDate)
                      : 'Select Date',
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),

          // Hours Selection
          const Text('Select Hours:', style: TextStyle(fontSize: 16)),
          const SizedBox(height: 8),
          ToggleButtons(
            isSelected: [
              selectedHours == 0.5,
              selectedHours == 1.0,
              selectedHours == 1.5,
              selectedHours == 2.0,
            ],
            onPressed: (index) {
              final hours = [0.5, 1.0, 1.5, 2.0][index];
              ref.read(selectedHoursProvider.notifier).state = hours;
            },
            children: const [
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('0.5 Day')),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('1 Day')),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('1.5 Days')),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('2 Days')),
            ],
          ),
          const SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              child: ref.watch(associatedProjectProvider(employeeId)).when(
                    data: (data) {
                      return Column(
                        children: data!.map((project) {
                          return RadioListTile<String>(
                            title: Text(project.name),
                            value: project.id,
                            groupValue: selectedProjectId,
                            onChanged: (value) {
                              ref
                                  .read(selectedProjectIdProvider.notifier)
                                  .state = value;
                            },
                          );
                        }).toList(),
                      );
                    },
                    error: (error, stackTrace) =>
                        const Center(child: Text('Unable to load Projects')),
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                  ),
            ),
          ),
          const SizedBox(height: 16),

          // Submit Button
          ElevatedButton(
            onPressed: () async {
              if (selectedProjectId == null ||
                  selectedDate == null ||
                  selectedHours == null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please fill all fields')),
                );
                return;
              }

              try {
                final workStatusDoc = FirebaseFirestore.instance
                    .collection('users')
                    .doc(employeeId)
                    .collection('work_status');

               var result =  await workStatusDoc.add({
                  'projectId': selectedProjectId,
                  'workDate': selectedDate,
                  'hoursWorked': selectedHours,
                  'createdAt': FieldValue.serverTimestamp(),
                  'userId': employeeId,
                  'updatedAt': FieldValue.serverTimestamp(),
                });
                await workStatusDoc.doc(result.id).update({'objectId':result.id});
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Work logged successfully!')),
                );
              } catch (e) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Error: $e')),
                );
              }
            },
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50)),
            child: const Text('Submit Work Log'),
          ),
        ],
      ),
    );
  }
}

// Riverpod Providers
final selectedDateProvider = StateProvider<DateTime?>((ref) => null);
final selectedHoursProvider = StateProvider<double?>((ref) => null);
final selectedProjectIdProvider = StateProvider<String?>((ref) => null);
