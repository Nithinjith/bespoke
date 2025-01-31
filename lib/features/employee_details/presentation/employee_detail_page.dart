import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bespoke/features/employees/data/entities/user_model.dart';
import 'package:bespoke/features/home/data/entities/project_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cloud_firestore_odm/cloud_firestore_odm.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Riverpod provider for managing the current tab index
final currentTabIndexProvider = StateProvider<int>((ref) => 0);

final associatedUsersProvider = FutureProvider<List<AssociatedUser>?>((
    ref) async {
  final associatedUsers = await userRef
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .associatedUsers
      .get();
  return associatedUsers.docs.map((e) => e.data,).toList();
},);

final associatedProjectsProvider = FutureProvider<List<UserProject>?>((
    ref) async {
  final associatedProjects = await userRef
      .doc(FirebaseAuth.instance.currentUser!.uid)
      .userProjects
      .get();
  return associatedProjects.docs.map((e) => e.data,).toList();
},);

@RoutePage()
class EmployeeDetailPage extends ConsumerStatefulWidget {
  const EmployeeDetailPage({
    super.key,
    required this.tabIndex,
    required this.employeeId,
  });

  final int tabIndex;
  final String employeeId;

  @override
  ConsumerState<EmployeeDetailPage> createState() => _EmployeeDetailPageState();
}

class _EmployeeDetailPageState extends ConsumerState<EmployeeDetailPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: widget.tabIndex);
    _tabController.addListener(_handleTabIndexChanged);
  }

  void _handleTabIndexChanged() {
    ref.read(currentTabIndexProvider.notifier).state = _tabController.index;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FirestoreBuilder(
      ref: userRef.doc(widget.employeeId),
      builder: (context, snapshot, child) {
        if (snapshot.hasError) {
          return const Center(child: Text('Unable to load data'));
        }
        final user = snapshot.data?.data;

        return Scaffold(
          appBar: AppBar(
            title: Text(user?.name ?? ''),
            bottom: TabBar(
              controller: _tabController,
              tabs: const [
                Tab(icon: Icon(Icons.folder), text: 'Projects'),
                Tab(icon: Icon(Icons.assignment), text: 'Work-Log'),
                Tab(icon: Icon(Icons.attach_money), text: 'Finance'),
              ],
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: [
              ProjectsTab(employeeId: widget.employeeId),
              WorkLogTab(employeeId: widget.employeeId),
              FinanceTab(employeeId: widget.employeeId),
            ],
          ),
        );
      },
    );
  }
}

// Tab Content Widgets
class ProjectsTab extends StatefulWidget {
  const ProjectsTab({super.key, required this.employeeId});

  final String employeeId;

  @override
  State<ProjectsTab> createState() => _ProjectsTabState();
}

class _ProjectsTabState extends State<ProjectsTab> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context); // Needed for AutomaticKeepAliveClientMixin
    debugPrint("Project Tab called...");
    return FirestoreBuilder(
      ref: projectRef.whereCreatorId(isEqualTo: FirebaseAuth.instance.currentUser!.uid),
      builder: (context, snapshot, child) {
        if (snapshot.hasError) {
          return const Center(child: Text("Error loading projects"));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final projects = snapshot.data?.docs ?? [];

        return ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index].data;
            return ListTile(
              title: Text(project?.name ?? ''),
              subtitle: Text(project?.description ?? ''),
            );
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}


class WorkLogTab extends StatefulWidget {
  const WorkLogTab({super.key, required this.employeeId});

  final String employeeId;

  @override
  State<WorkLogTab> createState() => _WorkLogTabState();
}

class _WorkLogTabState extends State<WorkLogTab> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    super.build(context);
    debugPrint("Work log Tab called...");
    return FirestoreBuilder(
      ref: userRef.doc(widget.employeeId).workStatus.orderByCreatedAt(),
      builder: (context, snapshot, child) {
        if (snapshot.hasError) {
          return const Center(child: Text("Error loading work log"));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final workLogs = snapshot.data?.docs ?? [];

        return ListView.builder(
          itemCount: workLogs.length,
          itemBuilder: (context, index) {
            final workStatus = workLogs[index].data;
            return ListTile(
              title: Text(workStatus.workDate.toString() ?? ''),
              subtitle: Text(workStatus.hoursWorked.toString() ?? ''),
            );
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}


class FinanceTab extends StatefulWidget {
  const FinanceTab({super.key, required this.employeeId});

  final String employeeId;

  @override
  State<FinanceTab> createState() => _FinanceTabState();
}

class _FinanceTabState extends State<FinanceTab> with AutomaticKeepAliveClientMixin {



  @override
  Widget build(BuildContext context) {
    super.build(context);
    debugPrint("Finance Tab called...");
    return FirestoreBuilder(
      ref: userRef.doc(widget.employeeId).finance.orderByCreatedAt(),
      builder: (context, snapshot, child) {
        if (snapshot.hasError) {
          return const Center(child: Text("Error loading finance data"));
        }
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final finances = snapshot.data?.docs ?? [];

        return ListView.builder(
          itemCount: finances.length,
          itemBuilder: (context, index) {
            final finance = finances[index].data;
            return ListTile(
              title: Text(finance.status ?? ''),
              subtitle: Text(finance.amount.toString() ?? ''),
            );
          },
        );
      },
    );
  }

  @override
  bool get wantKeepAlive => true;
}

