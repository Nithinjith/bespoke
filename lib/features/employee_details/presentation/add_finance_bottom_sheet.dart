import 'package:bespoke/features/employees/data/entities/user_model.dart';
import 'package:bespoke/features/home/data/entities/project_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final associatedProjectProvider =
    FutureProvider.family.autoDispose<List<Project>?, String>(
  (ref, userId) async {
    // Fetch user projects for the given userId
    final List<String>? userProjects =
        await userRef.doc(userId).userProjects.get().then(
              (value) => value.docs
                  .map(
                    (e) => e.data.id,
                  )
                  .toList(),
            );
    // Fetch projects where document ID is in the projectIds list
    final projects = await projectRef
        .whereDocumentId(whereIn: userProjects)
        .get()
        .then((snapshot) => snapshot.docs.map((doc) => doc.data).toList());
    return projects;
  },
);

Future<void> showFinanceBottomSheet(BuildContext context, String employeeId) {
  return showModalBottomSheet(
    context: context,
    isScrollControlled: true, // Allows full-screen height
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) => AddFinanceBottomSheet(
      employeeId: employeeId,
    ),
  );
}

class AddFinanceBottomSheet extends ConsumerStatefulWidget {
  final String employeeId;

  const AddFinanceBottomSheet({super.key, required this.employeeId});

  @override
  _AddFinanceBottomSheetState createState() => _AddFinanceBottomSheetState();
}

class _AddFinanceBottomSheetState extends ConsumerState<AddFinanceBottomSheet> {
  final _formKey = GlobalKey<FormState>();
  DateTime? _selectedDate;
  final TextEditingController _amountController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  String? _selectedProject;
  String? _selectedStatus;

  void _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() => _selectedDate = picked);
    }
  }

  void _submit() async {
    if (_formKey.currentState!.validate()) {
      if (_selectedDate == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Please select a date')),
        );
        return;
      }

      // Process the data
      print('Date: ${DateFormat('yyyy-MM-dd').format(_selectedDate!)}');
      print('Amount: ${_amountController.text}');
      print('Project: $_selectedProject');
      print('Status: $_selectedStatus');
      print('Description: ${_descriptionController.text}');

      var financeCollection =   FirebaseFirestore.instance
          .collection('users')
          .doc(widget.employeeId)
          .collection('finance');

      var result = await financeCollection.add({
        "updatedAt": FieldValue.serverTimestamp(),
        "createdAt": FieldValue.serverTimestamp(),
        "userId": widget.employeeId,
        "projectId": _selectedProject,
        "amount": double.parse(_amountController.text),
        "status": _selectedStatus,
        "description": _descriptionController.text.trim(),
      });
      await financeCollection.doc(result.id).update({'objectId': result.id});
      Navigator.pop(context); // Close the bottom sheet
    }
  }

  @override
  Widget build(BuildContext context) {
    return FirestoreBuilder(
      ref: userRef.doc(widget.employeeId).finance,
      builder: (context, snapshot, child) {
        if (snapshot.hasError) {
          return Text('Unable to load Projects');
        }
        return Padding(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context)
                .viewInsets
                .bottom, // Handle keyboard overlap
            left: 16,
            right: 16,
            top: 16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Add Transaction',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 16),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    // Date Picker
                    ListTile(
                      title: Text(_selectedDate == null
                          ? 'Select Date'
                          : DateFormat('yyyy-MM-dd').format(_selectedDate!)),
                      trailing: Icon(Icons.calendar_today),
                      onTap: _pickDate,
                    ),

                    SizedBox(height: 16),

                    // Amount Input
                    TextFormField(
                      controller: _amountController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Amount',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty)
                          return 'Enter an amount';
                        if (double.tryParse(value) == null)
                          return 'Enter a valid number';
                        return null;
                      },
                    ),

                    SizedBox(height: 16),

                    // Project Dropdown
                    buildDropdownButtonFormField(widget.employeeId),

                    SizedBox(height: 16),

                    // Status Dropdown
                    DropdownButtonFormField<String>(
                      value: _selectedStatus,
                      decoration: InputDecoration(
                        labelText: 'Transaction Type',
                        border: OutlineInputBorder(),
                      ),
                      items: ['Debit', 'Credit'].map((status) {
                        return DropdownMenuItem(
                          value: status,
                          child: Text(status),
                        );
                      }).toList(),
                      onChanged: (value) => setState(() => _selectedStatus = value),
                      validator: (value) =>
                      value == null ? 'Select a transaction type' : null,
                    ),

                    SizedBox(height: 16),

                    // Description (Multi-line Text Input)
                    TextFormField(
                      controller: _descriptionController,
                      keyboardType: TextInputType.multiline,
                      maxLines: 3,
                      decoration: InputDecoration(
                        labelText: 'Description (Optional)',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    SizedBox(height: 24),

                    // Submit Button
                    ElevatedButton(
                      onPressed: _submit,
                      style: ElevatedButton.styleFrom(
                        minimumSize:
                        Size(double.infinity, 50), // Full-width button
                      ),
                      child: Text('Submit'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Widget buildDropdownButtonFormField(String employeeId) {
    return ref.watch(associatedProjectProvider(employeeId)).when(
      data: (data) {
        var projectNameList = data!
            .map(
              (e) => e.name,
        )
            .toList();
        return DropdownButtonFormField<String>(
          value: _selectedProject,
          decoration: InputDecoration(
            labelText: 'Select Project',
            border: OutlineInputBorder(),
          ),
          items: projectNameList.map((project) {
            return DropdownMenuItem(
              value: project,
              child: Text(project),
            );
          }).toList(),
          onChanged: (value) => setState(() => _selectedProject = value),
          validator: (value) => value == null ? 'Select a project' : null,
        );
      },
      error: (error, stackTrace) =>
          Center(child: Text('Unable to load projects')),
      loading: () => Center(child: CircularProgressIndicator()),
    );
  }
}

