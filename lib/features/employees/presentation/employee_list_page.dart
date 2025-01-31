import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bespoke/features/employees/data/entities/user_model.dart';
import 'package:bespoke/features/employees/presentation/add_work_status_bottom_sheet.dart';
import 'package:bespoke/features/employees/presentation/employee_list_item_widget.dart';
import 'package:bespoke/features/employees/presentation/employee_selection_bottom_sheet.dart';
import 'package:bespoke/features/employees/presentation/project_selection_bottom_sheet.dart';
import 'package:bespoke/routing/route_config.gr.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final associatedUsersProvider =
FutureProvider.autoDispose((ref) async {
    // Fetch user projects for the given userId

    final List<String>? associatedUserIds =
    await userRef.doc(FirebaseAuth.instance.currentUser!.uid).associatedUsers.get().then(
          (value) => value.docs
          .map(
            (e) => e.data.id,
      )
          .toList(),
    );
    if(associatedUserIds == null || associatedUserIds.isEmpty){
      return [];
    }
    // Fetch projects where document ID is in the projectIds list
    final users = await userRef
        .whereDocumentId(whereIn: associatedUserIds)
        .get()
        .then((snapshot) => snapshot.docs.map((doc) => doc.data).toList());
    return users;
  },
);





@RoutePage()
class EmployeeListPage extends ConsumerWidget {
  const EmployeeListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Employees'),
      ),
      body: ref.watch(associatedUsersProvider).when(data: (data) {
        if(data.isNotEmpty){
          return ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              final user = data[index];
              return EmployeeListItem(user: user,);
            },
          );
        }else{
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(child: Text('You don\'t have employees. Use the + button to add a new employee' , style: Theme.of(context).textTheme.labelMedium,)),
          );
        }
      }, error: (error, stackTrace) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(child: Text('Unable to load data ${error.toString()}', style: Theme.of(context).textTheme.labelMedium,)),
        );
      }, loading: () {
        return CircularProgressIndicator();
      },),


      // FirestoreBuilder<UserQuerySnapshot>(
      //   ref: userRef,
      //   builder: (context, snapshot, child) {
      //     if (snapshot.hasError) {
      //       return Center(
      //         child: Text(
      //           'Error loading data ',
      //           style: Theme.of(context).textTheme.bodyMedium,
      //         ),
      //       );
      //     }
      //     if (!snapshot.hasData) {
      //       return Center(
      //         child: Text(
      //           'Create a new Project ',
      //           style: Theme.of(context).textTheme.bodyMedium,
      //         ),
      //       );
      //     }
      //     UserQuerySnapshot querySnapshot = snapshot.requireData;
      //     return ListView.builder(
      //       itemCount: querySnapshot.docs.length,
      //       itemBuilder: (context, index) {
      //         final user = querySnapshot.docs[index].data;
      //         return EmployeeListItem(user: user,);
      //       },
      //     );
      //   },
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.router.push(CreateEmployeeFormRoute());
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}

void showEmployeeSelectionBottomSheet(BuildContext context, String employeeId) {
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    builder: (context) => EmployeeSelectionBottomSheet(
      employeeId: employeeId,
    ),
  );
}


