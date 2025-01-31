import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../home/data/entities/project_model.dart';

import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import '../data/entities/user_model.dart';

class SelectProjectBottomSheet extends StatefulWidget {
  final String userId; // User ID to assign the project

  const SelectProjectBottomSheet({super.key, required this.userId});

  @override
  _SelectProjectBottomSheetState createState() => _SelectProjectBottomSheetState();
}

class _SelectProjectBottomSheetState extends State<SelectProjectBottomSheet> {
  String? selectedProjectId;

  @override
  Widget build(BuildContext context) {
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Select a Project',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),

              Expanded(
                child: FirestoreBuilder<ProjectQuerySnapshot>(
                  ref: projectRef.whereCreatorId(isEqualTo: FirebaseAuth.instance.currentUser!.uid),
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
                          subtitle: Text('Created At: ${DateFormat('yyyy-MM-dd').format(project.createdAt)}'),
                          leading: Radio<String>(
                            value: projectDocs[index].id,
                            groupValue: selectedProjectId,
                            onChanged: (value) {
                              setState(() {
                                selectedProjectId = value;
                              });
                            },
                          ),
                          onTap: () {
                            setState(() {
                              selectedProjectId = projectDocs[index].id;
                            });
                          },
                        );
                      },
                    );
                  },
                ),
              ),

              const SizedBox(height: 16),

              // Submit Button
              ElevatedButton(
                onPressed: () async {
                  if (selectedProjectId == null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Please select a project.')),
                    );
                    return;
                  }

                  try {
                    final newUserProject = UserProject(
                      id: selectedProjectId!,
                      objectId: selectedProjectId!,
                      createdAt: DateTime.now(),
                      updatedAt: DateTime.now(),
                      userId: widget.userId,
                    );
                    // await userRef.doc(widget.userId).userProjects.add(newUserProject);

                    await FirebaseFirestore.instance
                        .collection('users')
                        .doc(widget.userId)
                        .collection('user_projects')
                        .doc(newUserProject.id)
                        .set(newUserProject.toJson());

                    Navigator.of(context).pop();
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Project assigned successfully.')),
                    );
                  } catch (e) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text('Error: $e')),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 50)),
                child: const Text('Assign Project'),
              ),
            ],
          ),
        );
      },
    );
  }
}

