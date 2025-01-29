import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Riverpod provider for managing the current tab index
final currentTabIndexProvider = StateProvider<int>((ref) => 0);

@RoutePage()
class EmployeeDetailPage extends ConsumerStatefulWidget {
  const EmployeeDetailPage(
      {super.key, required this.tabIndex, required this.employeeId});

  final int tabIndex;
  final String employeeId;

  @override
  ConsumerState<EmployeeDetailPage> createState() => _TabsPageState();
}

class _TabsPageState extends ConsumerState<EmployeeDetailPage>
    with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabIndexChanged);
  }

  void _handleTabIndexChanged() {
    final currentIndex = _tabController.index;
    if (currentIndex != ref.read(currentTabIndexProvider)) {
      ref.read(currentTabIndexProvider.notifier).state = currentIndex;
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentIndex = ref.watch(currentTabIndexProvider);

    // Sync tab controller with provider state
    if (_tabController.index != currentIndex) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        _tabController.animateTo(currentIndex);
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Multi-Tab App'),
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
        children: const [
          ProjectsTab(),
          WorkLogTab(),
          FinanceTab(),
        ],
      ),
    );
  }
}

// Tab Content Widgets
class ProjectsTab extends StatelessWidget {
  const ProjectsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Projects Content',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class WorkLogTab extends StatelessWidget {
  const WorkLogTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Work-Log Content',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}

class FinanceTab extends StatelessWidget {
  const FinanceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Finance Content',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
