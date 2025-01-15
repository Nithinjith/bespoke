import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:bespoke/routing/route_config.gr.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final emailProvider = StateProvider<String?>(
  (ref) => null,
);
final passwordProvider = StateProvider<String?>(
  (ref) => null,
);

@RoutePage()
class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: screenWidth * 0.3,
              height: screenWidth * 0.3,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bespoke_logo.png'),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            SizedBox(height: screenHeight * 0.05),
            Container(
              width: screenWidth * 0.8,
              padding: EdgeInsets.all(screenWidth * 0.05),
              decoration: BoxDecoration(
                color: theme.colorScheme.surface,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.25),
                    blurRadius: 4,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Column(
                children: [
                  Text(
                    'Sign in with Email',
                    style: theme.textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    'Use the registered email and password to login Attendanse',
                    textAlign: TextAlign.center,
                    style: theme.textTheme.bodyMedium?.copyWith(
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  _buildInputField(
                    context,
                    label: 'Email',
                    backgroundColor: Colors.grey[300],
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  _buildInputField(
                    context,
                    label: 'Password',
                    backgroundColor: Colors.grey[300],
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  _buildButton(
                    context,
                    label: 'Get Started',
                    color: theme.colorScheme.primary,
                    textColor: theme.colorScheme.onPrimary,
                    ref: ref
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField(
    BuildContext context, {
    required String label,
    required Color? backgroundColor,
  }) {
    final theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          label,
          style: theme.textTheme.bodyMedium?.copyWith(
            fontWeight: FontWeight.w300,
          ),
        ),
      ),
    );
  }

  Widget _buildButton(
    BuildContext context, {
    required String label,
    required Color color,
    required Color textColor,
    required WidgetRef ref,
  }) {
    final email = ref.watch(emailProvider);
    final password = ref.watch(passwordProvider);
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: () async {
        if (validateInputs(context, email, password)) {
          final result = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: email!, password: password!);
          if (result.user?.uid != null && context.mounted) {
            context.router.push(HomeRoute());
          }
        }
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            label,
            style: theme.textTheme.displayLarge?.copyWith(
              color: textColor,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }

  bool validateInputs(BuildContext context, String? email, String? password) {
    if (email == null || email.isEmpty) {
      showError(context, 'Email is required.');
      return false;
    }

    if (!RegExp(r"^[a-zA-Z0-9._%-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
        .hasMatch(email)) {
      showError(context, 'Please enter a valid email address.');
      return false;
    }

    if (password == null || password.isEmpty) {
      showError(context, 'Password is required.');
      return false;
    }

    if (password.length < 6) {
      showError(context, 'Password must be at least 6 characters long.');
      return false;
    }

    return true;
  }

  void showError(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ),
    );
  }
}
