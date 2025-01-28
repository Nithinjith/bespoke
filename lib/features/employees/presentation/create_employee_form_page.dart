import 'package:auto_route/annotations.dart';
import 'package:bespoke/features/employees/data/entities/user_model.dart';
import 'package:bespoke/features/employees/presentation/project_selection_bottom_sheet.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

@RoutePage()
class CreateEmployeeFormPage extends StatefulWidget {
  final User? initialUser; // Pass null for creation, User object for update
  const CreateEmployeeFormPage({super.key, this.initialUser});

  @override
  _CreateEmployeeFormPageState createState() => _CreateEmployeeFormPageState();
}

class _CreateEmployeeFormPageState extends State<CreateEmployeeFormPage> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _userRef = FirebaseFirestore.instance.collection('users');

  @override
  Widget build(BuildContext context) {
    final isUpdate = widget.initialUser != null;

    return Scaffold(
      appBar: AppBar(
        title: Text(isUpdate ? 'Update User' : 'Create User'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FormBuilder(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Name Field
                FormBuilderTextField(
                  name: 'name',
                  initialValue: widget.initialUser?.name ?? '',
                  decoration: const InputDecoration(labelText: 'Name'),
                  validator: FormBuilderValidators.required(),
                ),
                const SizedBox(height: 16),
                // Email Field
                FormBuilderTextField(
                  name: 'email',
                  initialValue: widget.initialUser?.email ?? '',
                  decoration: const InputDecoration(labelText: 'Email'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                  ]),
                ),
                const SizedBox(height: 16),
                // Password Field
                if (!isUpdate) ...[
                  FormBuilderTextField(
                    name: 'password',
                    decoration: const InputDecoration(labelText: 'Password'),
                    obscureText: true,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(6, errorText: 'Password must be at least 6 characters long'),
                    ]),
                  ),
                  const SizedBox(height: 16),
                  FormBuilderTextField(
                    name: 'confirmPassword',
                    decoration: const InputDecoration(labelText: 'Confirm Password'),
                    obscureText: true,
                    validator: (value) {
                      final password = _formKey.currentState?.fields['password']?.value ?? '';
                      if (value == null || value.isEmpty) {
                        return 'Confirm Password is required';
                      }
                      if (value != password) {
                        return 'Passwords do not match';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                ],
                // Phone Field
                FormBuilderTextField(
                  name: 'phone',
                  initialValue: widget.initialUser?.phone.toString() ?? '',
                  decoration: const InputDecoration(labelText: 'Phone'),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                    FormBuilderValidators.numeric(),
                    FormBuilderValidators.minLength(10),
                    FormBuilderValidators.maxLength(10),
                  ]),
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(height: 16),
                // Save Button
                ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState?.saveAndValidate() ?? false) {
                      final formData = _formKey.currentState!.value;
                      await _saveUser(formData, isUpdate);
                      Navigator.pop(context); // Close the form page
                    }
                  },
                  child: Text(isUpdate ? 'Update' : 'Create'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _saveUser(Map<String, dynamic> formData, bool isUpdate) async {
    final now = DateTime.now();

    if (isUpdate) {
      // Update user
      await _userRef.doc(widget.initialUser!.id).update({
        'name': formData['name'],
        'email': formData['email'],
        'phone': int.parse(formData['phone']),
        'updatedAt': now,
      });
    } else {
      // Create user
      var resul = await auth.FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: formData['email'],
        password: formData['password'],
      );
      final newUser = {
        'name': formData['name'],
        'email': formData['email'],
        'phone': int.parse(formData['phone']),
        'createdAt': now,
        'updatedAt': now,
        'objectId':resul.user!.uid
      };
      await _userRef.doc(resul.user!.uid).set(newUser);
    }
  }
}

