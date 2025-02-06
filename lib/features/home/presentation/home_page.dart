import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bespoke/core/widgets/bespoke_home_bottom_bar.dart';
import 'package:bespoke/core/widgets/no_data_lotie_animation.dart';
import 'package:bespoke/features/home/data/entities/project_model.dart';
import 'package:bespoke/routing/route_config.gr.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
          ref: projectRef.whereCreatorId(isEqualTo: FirebaseAuth.instance.currentUser!.uid),
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
            if(snapshot.data!.docs.isEmpty){
              return NoDataWidget(message: 'No Project Available, Press + and add',);
            }
            ProjectQuerySnapshot querySnapshot = snapshot.requireData;
            return ListView.builder(
              itemCount: querySnapshot.docs.length,
              itemBuilder: (context, index) {
                final project = querySnapshot.docs[index].data;
                return ListTile(
                  title: Text(project.name),
                  subtitle: Text(project.description),
                  onTap: () {
                    context.pushRoute(ProjectFormRoute(project: project));
                  },
                );
              },
            );
          },
        ),
        bottomNavigationBar: BespokeBottomBar(sectionCallback: (callBack) {
          switch (callBack) {
            case BottomBarSection.home:
               context.router.push(HomeRoute());
               break;
            case BottomBarSection.employees:
              context.router.push(EmployeeListRoute());
              break;
            case BottomBarSection.finance:
              context.router.push(HomeRoute());
              break;
            default:
              throw Exception('Invalid section name: $callBack');
          }
        },),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.router.push(ProjectFormRoute());
          },
          backgroundColor: Colors.green,
          child: const Icon(Icons.add, color: Colors.white),
        ),
      ),
    );
  }
}
