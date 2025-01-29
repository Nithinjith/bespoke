import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';

// Theme state provider
final themeProvider = StateProvider<ThemeMode>((ref) => ThemeMode.light);

@RoutePage()
class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTheme = ref.watch(themeProvider);
    final user = FirebaseAuth.instance.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Profile Section
          Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: user?.photoURL != null
                    ? NetworkImage(user!.photoURL!)
                    : null,
                child: user?.photoURL == null
                    ? const Icon(Icons.person, size: 50)
                    : null,
              ),
              const SizedBox(height: 16),
              Text(
                user?.displayName ?? 'No Name',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Text(
                user?.email ?? '',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
          const SizedBox(height: 32),

          // Theme Switch
          Card(
            child: SwitchListTile(
              title: const Text('Dark Theme'),
              value: currentTheme == ThemeMode.dark,
              onChanged: (value) {
                ref.read(themeProvider.notifier).state =
                value ? ThemeMode.dark : ThemeMode.light;
              },
              secondary: const Icon(Icons.color_lens),
            ),
          ),

          // More Options (Placeholder)
          const Card(
            child: ListTile(
              leading: Icon(Icons.settings),
              title: Text('Account Settings'),
              enabled: false,
            ),
          ),
          const Card(
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
              enabled: false,
            ),
          ),

          const Divider(),

          // Logout Button
          Card(
            child: ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Logout'),
              onTap: () => _showLogoutDialog(context),
            ),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Implement logout logic
              FirebaseAuth.instance.signOut();
              Navigator.popUntil(context, (route) => route.isFirst);
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}