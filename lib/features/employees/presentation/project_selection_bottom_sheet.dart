import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../home/data/entities/project_model.dart';

class SelectProjectBottomSheet extends StatelessWidget {

  const SelectProjectBottomSheet({super.key,});

  @override
  Widget build(BuildContext context) {
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
                'Select a Project',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: FirestoreBuilder<ProjectQuerySnapshot>(
                  ref:  projectRef.orderByCreatedAt(),
                  builder: (context, AsyncSnapshot<ProjectQuerySnapshot> snapshot, _) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (snapshot.hasError) {
                      return Center(child: Text('Error: ${snapshot.error}'));
                    }

                    final projectDocs = snapshot.data?.docs ?? [];

                    if (projectDocs.isEmpty) {
                      return const Center(child: Text('No projects available.'));
                    }

                    return ListView.builder(
                      controller: scrollController,
                      itemCount: projectDocs.length,
                      itemBuilder: (context, index) {
                        final project = projectDocs[index].data;
                        return ListTile(
                          title: Text(project.name),
                          subtitle: Text('Created At: ${project.createdAt}'),
                          leading: Radio<String>(
                            value: projectDocs[index].id,
                            groupValue: selectedProjectId,
                            onChanged: (value) {
                              selectedProjectId = value;
                            },
                          ),
                          onTap: () {
                            selectedProjectId = projectDocs[index].id;
                          },
                        );
                      },
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                onPressed: () async {
                  if (selectedProjectId == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please select a project.')),
                    );
                    return;
                  }

                  try {
                    await FirebaseFirestore.instance.collection('selectedProjects').add({
                      'projectId': selectedProjectId,
                      'timestamp': FieldValue.serverTimestamp(),
                    });
                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Project data pushed successfully.')),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error: $e')),
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        );
      },
    );
  }
}
