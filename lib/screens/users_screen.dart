import 'package:developer_panel_app/widgets/base_body.dart';
import 'package:developer_panel_app/widgets/user_list/user_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UsersScreen extends ConsumerWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return BaseBody(
        child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Users',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: 20,
          ),
          const Expanded(child: UserList()),
          const SizedBox(
            height: 20,
          )
        ],
      ),
    ));
  }
}
