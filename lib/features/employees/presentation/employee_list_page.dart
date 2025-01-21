import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bespoke/features/employees/data/entities/user_model.dart';
import 'package:bespoke/routing/route_config.gr.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:flutter/material.dart';

@RoutePage()
class EmployeeListPage extends StatelessWidget {
  const EmployeeListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employees'),
      ),
      body: FirestoreBuilder<UserQuerySnapshot>(
        ref: userRef,
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
          UserQuerySnapshot querySnapshot = snapshot.requireData;
          return ListView.builder(
            itemCount: querySnapshot.docs.length,
            itemBuilder: (context, index) {
              final user = querySnapshot.docs[index].data;
              return ListTile(
                title: Text(user.name),
                subtitle: Text(user.email),
                onTap: () {

                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        context.router.push(CreateEmployeeFormRoute());
      },),
    );
  }
}
