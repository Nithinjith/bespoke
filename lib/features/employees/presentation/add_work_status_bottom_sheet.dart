import 'package:bespoke/features/home/data/entities/project_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
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
    String? selectedProjectId;

    return DraggableScrollableSheet(
      expand: false,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            color: Theme.of(context).scaffoldBackgroundColor,
            borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          ),
          child: Column(
            children: [
              const Text(
                'Log Work Hours',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              // Date Selection Row
              Row(
                children: [
                  const Text('Selected Date:'),
                  TextButton(
                    onPressed: () async {
                      final date = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2020),
                        lastDate: DateTime(2030),
                      );
                      if (date != null) {
                        ref.read(selectedDateProvider.notifier).state = date;
                      }
                    },
                    child: Text(
                      selectedDate != null
                          ? DateFormat('MMM dd, yyyy').format(selectedDate)
                          : 'Select Date',
                    ),
                  ),
                ],
              ),

              // Hours Selection
              const Text('Select Hours:'),
              const SizedBox(height: 8),
              ToggleButtons(
                isSelected: const [false, false, false, false],
                onPressed: (index) {
                  final hours = [0.5, 1.0, 1.5, 2.0][index];
                  ref.read(selectedHoursProvider.notifier).state = hours;
                },
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('0.5 Day (4h)'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('1 Day (8h)'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('1.5 Days (12h)'),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    child: Text('2 Days (16h)'),
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // Project Selection List
              Expanded(
                child: FirestoreBuilder<ProjectQuerySnapshot>(
                  ref: projectRef.orderByCreatedAt(),
                  builder: (context, snapshot, _) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }

                    final projects = snapshot.data?.docs ?? [];

                    return ListView.builder(
                      controller: scrollController,
                      itemCount: projects.length,
                      itemBuilder: (context, index) {
                        final project = projects[index].data;
                        return RadioListTile<String>(
                          title: Text(project.name),
                          value: projects[index].id,
                          groupValue: selectedProjectId,
                          onChanged: (value) {
                            selectedProjectId = value;
                          },
                        );
                      },
                    );
                  },
                ),
              ),

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
                        .collection('employees')
                        .doc(employeeId)
                        .collection('workStatus')
                        .doc();

                    await workStatusDoc.set({
                      'projectId': selectedProjectId,
                      'workDate': selectedDate,
                      'hoursWorked': selectedHours,
                      'createdAt': FieldValue.serverTimestamp(),
                    });

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
                child: const Text('Submit Work Log'),
              ),
            ],
          ),
        );
      },
    );
  }
}

// Riverpod Providers
final selectedDateProvider = StateProvider<DateTime?>((ref) => null);
final selectedHoursProvider = StateProvider<double?>((ref) => null);