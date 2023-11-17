import 'package:corbado_auth/corbado_auth.dart';
import 'package:flutter/material.dart' hide ModalBottomSheetRoute;
import 'package:go_router/go_router.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class PasskeyCard extends StatelessWidget {
  final PasskeyInfo passkeyInfo;
  final void Function(String) onDelete;

  const PasskeyCard({super.key, required this.passkeyInfo, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    final txtStyle = Theme.of(context).textTheme.bodyMedium;
    return GestureDetector(
      onLongPress: () {
        showMaterialModalBottomSheet(
          context: context,
          builder: (context) => SizedBox(
              height: 100,
              child: Column(
                children: [
                  ListTile(
                    textColor: Theme.of(context).colorScheme.onBackground,
                    iconColor: Theme.of(context).colorScheme.onBackground,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 30),
                    onTap: () {
                      onDelete(passkeyInfo.id);
                      context.pop();
                    },
                    title: const Text('Delete passkey'),
                    trailing: const Icon(Icons.delete),
                  )
                ],
              )),
        );
      },
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ID: ${passkeyInfo.id}',
                style: txtStyle,
              ),
              Text(
                'Device: ${passkeyInfo.userAgent}',
                style: txtStyle,
              ),
              Text(
                'Created: ${passkeyInfo.created}',
                style: txtStyle,
              )
            ],
          ),
        ),
      ),
    );
  }
}
