import 'package:auto_route/annotations.dart';
import 'package:bespoke/features/home/data/entities/project_model.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';

import '../../../core/widgets/bespoke_home_app_bar.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: BeSpokeHomeAppBar(),
        body: FirestoreBuilder<ProjectQuerySnapshot>(
          ref: projectRef.orderByCreatedAt(),
          builder: (context, snapshot, child) {
            if (snapshot.hasError) {
              return Center(
                child: Text(
                  'Error loading data ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            }
            if (!snapshot.hasData) {
              return Center(
                child: Text(
                  'Create a new Project ',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              );
            }
            ProjectQuerySnapshot querySnapshot = snapshot.requireData;
            return ListView.builder(
              itemBuilder: (context, index) {
                final project = querySnapshot.docs[index].data;
                return ListTile(
                  title: Text(project.name),
                  subtitle: Text(project.description),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
