import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
// import '../../../episode/domain/enums/element_type.dart';
import '../../../notepad/presentation/widgets/notepad.dart';
import '../widgets/case_files.dart';

class CaseFilesScreen extends ConsumerWidget {
  const CaseFilesScreen({
    super.key,
    required this.episodeId,
  });

  final String episodeId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: const BranchHeader(title: 'Case File'),
      body: SafeArea(
        child: Padding(
          padding: AppSizes.screenPadding,
          child: Column(
            children: [
              // Notepad
              SizedBox(
                height: screenHeight * 0.25,
                child: Notepad(episodeId: episodeId),
              ),
              const SizedBox(height: AppSizes.paddingM),

              // Case files
              Expanded(
                child: CaseFiles(
                  episodeId: episodeId,
                  onElementTap: (type, id) {
                    // Navigate to element screen
                    context.push(
                      '/episode/$episodeId/case-files/${type.value}/$id',
                    );
                  },
                ),
              ),
              const SizedBox(height: AppSizes.paddingM),

              // Go back button
              AppButton(
                text: 'Go back',
                onPressed: () => context.pop(),
                type: AppButtonType.outline,
                isFullWidth: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}