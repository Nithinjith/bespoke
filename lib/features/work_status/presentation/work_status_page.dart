import 'package:bespoke/features/employees/data/entities/user_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:table_calendar/table_calendar.dart';


Future<List<WorkStatus>> fetchWorkStatus(
    String employeeId, DateTime startDate, DateTime endDate) async {
  final query = userRef.doc(employeeId).workStatus;
  final snapshot = await query.get();
  return snapshot.docs.map((doc) => doc.data).toList();
}

Future<void> addWorkStatus(String employeeId, WorkStatus workStatus) async {
  final employeeDoc = userRef.doc(employeeId).workStatus;
  await employeeDoc.add(workStatus);
}

final employeeIdProvider = Provider<String>((ref) {
  // You can get the employee ID from the route arguments or any other source
  throw UnimplementedError('Provide the employee ID');
});
final selectedDateProvider = StateProvider<DateTime?>((ref) => null);

final workStatusProvider = FutureProvider.family<List<WorkStatus>, DateTime?>(
    (ref, selectedDate) async {
  final employeeId = ref.watch(employeeIdProvider);
  if (selectedDate == null) return [];
  return fetchWorkStatus(employeeId, selectedDate, selectedDate);
});

class WorkStatusPage extends ConsumerWidget {
  final String employeeId;

  WorkStatusPage({required this.employeeId});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedDate = ref.watch(selectedDateProvider);
    final workStatusAsync = ref.watch(workStatusProvider(selectedDate));

    return Scaffold(
      appBar: AppBar(
        title: Text('Work Status'),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2010, 10, 16),
            lastDay: DateTime.utc(2030, 3, 14),
            focusedDay: DateTime.now(),
            calendarFormat: CalendarFormat.month,
            selectedDayPredicate: (day) {
              return isSameDay(selectedDate, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              ref.read(selectedDateProvider.notifier).state = selectedDay;
            },
            onFormatChanged: (format) {
              // Handle format change if needed
            },
            onPageChanged: (focusedDay) {
              // Handle page change if needed
            },
          ),
          Expanded(
            child: workStatusAsync.when(
              loading: () => Center(child: CircularProgressIndicator()),
              error: (error, stack) => Center(child: Text('Error: $error')),
              data: (workStatusList) {
                if (workStatusList.isEmpty) {
                  return Center(
                      child: Text('No work status found for this date'));
                }
                return ListView.builder(
                  itemCount: workStatusList.length,
                  itemBuilder: (context, index) {
                    final workStatus = workStatusList[index];
                    return ListTile(
                      title: Text('Date: ${workStatus.workDate.toString()}'),
                      subtitle: Text('Hours Worked: ${workStatus.hoursWorked}'),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
