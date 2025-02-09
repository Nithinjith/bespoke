import 'package:bespoke/features/employees/data/entities/user_model.dart';
import 'package:bespoke/features/employees/presentation/employee_list_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';

class EmployeeListItem extends StatelessWidget {

  final User user;

  const EmployeeListItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        showEmployeeSelectionBottomSheet(context, user.id);
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 150,
          decoration: BoxDecoration(
            color: const Color(0xFFFFFAFA),
            border: Border.all(color: const Color(0xFFBBB7B7)),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildUserHeader(context),
                const SizedBox(height: 16),
                _buildContactInfo(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildUserHeader(BuildContext context) {
    return Row(
      children: [
        ProfilePicture(
          name: user.name,
          radius: 28,
          fontsize: 18,

        ),
        const SizedBox(width: 16),
        Text(
          user.name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }

  Widget _buildContactInfo(BuildContext context) {
    return Row(
      children: [
        _buildContactItem(context, Icons.phone, user.phone.toString()),
        const SizedBox(width: 24),
        _buildContactItemForEmail(context, Icons.email, user.email),
      ],
    );
  }

  Widget _buildContactItem(BuildContext context, IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 24),
        const SizedBox(width: 8),
        Text(
          text,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }Widget _buildContactItemForEmail(BuildContext context, IconData icon, String text) {
    return  Container(
      constraints: const BoxConstraints(maxWidth:220), // Example constraint to control width
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(icon, size: 24),
                const SizedBox(width: 8),
                Expanded( // Ensures the text takes up available space and wraps
                  child: Text(
                    text,
                    style: Theme.of(context).textTheme.bodySmall,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,// or TextOverflow.ellipsis for single-line truncation
                    softWrap: true, // Allows wrapping
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}