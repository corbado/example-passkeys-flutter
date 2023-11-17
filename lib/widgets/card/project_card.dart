import 'package:corbado_auth/corbado_auth.dart';
import 'package:developer_panel_app/models/project_info.dart';
import 'package:flutter/material.dart';

class ProjectCard extends StatelessWidget {
  final ProjectInfo projectInfo;
  final bool selected;

  const ProjectCard(
      {super.key, required this.projectInfo, this.selected = false});

  @override
  Widget build(BuildContext context) {
    final txtStyle = Theme.of(context).textTheme.bodyMedium;
    final borderShape = _buildBorder(context);

    return Card(
      shape: borderShape,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'ID: ${projectInfo.id}',
              style: txtStyle,
            ),
            Text(
              'Device: ${projectInfo.name}',
              style: txtStyle,
            ),
            Text(
              'Created: ${projectInfo.created}',
              style: txtStyle,
            )
          ],
        ),
      ),
    );
  }

  ShapeBorder? _buildBorder(BuildContext context) {
    if (selected) {
      return RoundedRectangleBorder(
        side:
            BorderSide(color: Theme.of(context).colorScheme.primary, width: 3),
        borderRadius: BorderRadius.circular(20),
      );
    }

    return null;
  }
}
