import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../data/entities/project_model.dart';

class ProjectForm extends StatefulWidget {
  final Project? project; // Pass this when editing an existing project

  const ProjectForm({Key? key, this.project}) : super(key: key);

  @override
  _ProjectFormState createState() => _ProjectFormState();
}

class _ProjectFormState extends State<ProjectForm> {
  final _formKey = GlobalKey<FormBuilderState>();

  Future<void> saveProject(Map<String, dynamic> data) async {
    if (widget.project == null || widget.project!.id.isEmpty) {
      // Create a new project
      final docRef =
          await FirebaseFirestore.instance.collection('projects').add({
        ...data,
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
      });

      debugPrint('Project created with ID: ${docRef.id}');
    } else {
      // Update the existing project
      await FirebaseFirestore.instance
          .collection('projects')
          .doc(widget.project!.id)
          .update({
        ...data,
        'updatedAt': FieldValue.serverTimestamp(),
      });

      debugPrint('Project updated with ID: ${widget.project!.id}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.project == null ? 'Create Project' : 'Edit Project'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          initialValue: widget.project != null
              ? {
                  'name': widget.project!.name,
                  'description': widget.project!.description,
                  'startDate': widget.project!.startDate,
                  'expectedDeliveryDate': widget.project!.expectedDeliveryDate,
                  'creatorId': widget.project!.creatorId,
                }
              : {},
          child: Column(
            children: [
              FormBuilderTextField(
                name: 'name',
                decoration: const InputDecoration(labelText: 'Project Name'),
                validator: FormBuilderValidators.required(),
              ),
              FormBuilderTextField(
                name: 'description',
                decoration: const InputDecoration(labelText: 'Description'),
                maxLines: 3,
              ),
              FormBuilderDateTimePicker(
                name: 'startDate',
                decoration: const InputDecoration(labelText: 'Start Date'),
                inputType: InputType.date,
              ),
              FormBuilderDateTimePicker(
                name: 'expectedDeliveryDate',
                decoration:
                    const InputDecoration(labelText: 'Expected Delivery Date'),
                inputType: InputType.date,
              ),
              FormBuilderTextField(
                name: 'creatorId',
                decoration: const InputDecoration(labelText: 'Creator ID'),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () async {
                  if (_formKey.currentState?.saveAndValidate() ?? false) {
                    final projectData = _formKey.currentState!.value;

                    try {
                      await saveProject(projectData);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(widget.project == null
                              ? 'Project created successfully'
                              : 'Project updated successfully'),
                        ),
                      );
                      Navigator.pop(context);
                    } catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Error: $e')),
                      );
                    }
                  }
                },
                child: Text(widget.project == null
                    ? 'Create Project'
                    : 'Update Project'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
