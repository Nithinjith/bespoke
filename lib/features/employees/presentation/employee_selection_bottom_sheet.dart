import 'package:auto_route/auto_route.dart';
import 'package:bespoke/features/employee_details/presentation/add_finance_bottom_sheet.dart';
import 'package:bespoke/features/employees/presentation/add_work_status_bottom_sheet.dart';
import 'package:bespoke/features/employees/presentation/project_selection_bottom_sheet.dart';
import 'package:bespoke/routing/route_config.gr.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EmployeeSelectionBottomSheet extends StatefulWidget {
  const EmployeeSelectionBottomSheet({super.key, required this.employeeId});

  final String employeeId;

  @override
  State<EmployeeSelectionBottomSheet> createState() =>
      _EmployeeSelectionBottomSheetState();
}

class _EmployeeSelectionBottomSheetState
    extends State<EmployeeSelectionBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('Add Category', style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _BottomSheetItem(
                label: 'Projects',
                imagePath: 'assets/icons/ic_project_b_sheet.png',
                onTap: () => setState(() {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => SelectProjectBottomSheet(userId: widget.employeeId, ));
                }),
              ),
              _BottomSheetItem(
                label: 'Work-log',
                imagePath: 'assets/icons/ic_work_log_b_sheet.png',
                onTap: () => setState(() {
                  showModalBottomSheet(
                      context: context,
                      builder: (context) => AddWorkStatusBottomSheet(
                          employeeId: widget.employeeId));
                }),
              ),
              _BottomSheetItem(
                label: 'Finance',
                imagePath: 'assets/icons/ic_finance_b_sheet.png',
                onTap: () => setState(() {
                   showFinanceBottomSheet(context, widget.employeeId);
                }),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Text('Select Category', style: Theme.of(context).textTheme.bodyLarge),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _BottomSheetItem(
                label: 'Projects',
                imagePath: 'assets/icons/ic_project_b_sheet.png',
                onTap: () => setState(() {
                  context.router.push(EmployeeDetailRoute(tabIndex: 0, employeeId: widget.employeeId));
                }),
              ),
              _BottomSheetItem(
                label: 'Work-log',
                imagePath: 'assets/icons/ic_work_log_b_sheet.png',
                onTap: () => setState(() {
                  context.router.push(EmployeeDetailRoute(tabIndex: 1, employeeId: widget.employeeId));
                }),
              ),
              _BottomSheetItem(
                label: 'Finance',
                imagePath: 'assets/icons/ic_finance_b_sheet.png',
                onTap: () => setState(() {
                  context.router.push(EmployeeDetailRoute(tabIndex: 2, employeeId: widget.employeeId));
                }),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _BottomSheetItem extends StatelessWidget {
  final String label;
  final String imagePath;
  final VoidCallback onTap;

  const _BottomSheetItem({
    required this.label,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          SizedBox(
            width: 60,
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                imagePath, // Path to your SVG file
                fit: BoxFit.contain, // Adjust the fit property as needed
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ],
      ),
    );
  }
}
