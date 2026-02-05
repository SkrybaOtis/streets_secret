import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../character/presentation/controllers/character_controller.dart';
import '../../../clue/presentation/controllers/clue_controller.dart';
import '../../../enigma/presentation/controllers/enigma_controller.dart';
import '../../../episode/domain/enums/element_type.dart';
import '../widgets/case_files.dart';

class CaseFilesElementScreen extends ConsumerWidget {
  const CaseFilesElementScreen({
    super.key,
    required this.episodeId,
    required this.elementType,
    required this.elementId,
  });

  final String episodeId;
  final ElementType elementType;
  final int elementId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Build different screens based on element type
    if (elementType == ElementType.enigma) {
      return _buildEnigmaScreen(context, ref);
    }

    return _buildCharacterOrClueScreen(context, ref);
  }

  Widget _buildCharacterOrClueScreen(BuildContext context, WidgetRef ref) {
    final screenHeight = MediaQuery.of(context).size.height;

    late AsyncValue<dynamic> elementAsync;
    late String name;
    late String description;
    late String imageUrl;

    if (elementType == ElementType.character) {
      elementAsync = ref.watch(characterProvider(episodeId, elementId));
    } else {
      elementAsync = ref.watch(clueProvider(episodeId, elementId));
    }

    return Scaffold(
      appBar: elementAsync.when(
        data: (element) => BranchHeader(title: element.name),
        loading: () => const BranchHeader(title: 'Loading...'),
        error: (_, __) => const BranchHeader(title: 'Error'),
      ),
      body: AsyncValueWidget(
        value: elementAsync,
        data: (element) => SafeArea(
          child: Padding(
            padding: AppSizes.screenPadding,
            child: Column(
              children: [
                // Portrait
                Container(
                  width: screenHeight * AppSizes.portraitWidth,
                  height: screenHeight * AppSizes.portraitHeight,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(AppSizes.radiusL),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.1),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(AppSizes.radiusL),
                    child: element.imageUrl.isNotEmpty
                        ? Image.asset(
                            element.imageUrl,
                            fit: BoxFit.cover,
                            errorBuilder: (_, __, ___) => Icon(
                              elementType == ElementType.character
                                  ? Icons.person
                                  : Icons.search,
                              size: 64,
                              color: Colors.grey,
                            ),
                          )
                        : Icon(
                            elementType == ElementType.character
                                ? Icons.person
                                : Icons.search,
                            size: 64,
                            color: Colors.grey,
                          ),
                  ),
                ),
                const SizedBox(height: AppSizes.paddingL),

                // Description
                Expanded(
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppSizes.paddingM),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(AppSizes.radiusM),
                      border: Border.all(color: Colors.grey[300]!),
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        element.description,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
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
      ),
    );
  }

  Widget _buildEnigmaScreen(BuildContext context, WidgetRef ref) {
    final enigmaAsync = ref.watch(enigmaProvider(episodeId, elementId));

    return Scaffold(
      // appBar: AsyncValueWidget(
      //   value: enigmaAsync,
      //   data: (enigma) => BranchHeader(title: enigma.name),
      //   loading: () => const BranchHeader(title: 'Loading...'),
      //   error: (_, __) => const BranchHeader(title: 'Error'),
      // ),
      appBar: enigmaAsync.when(
        data: (enigma) => BranchHeader(title: enigma.name),
        loading: () => const BranchHeader(title: 'Loading...'),
        error: (_, __) => const BranchHeader(title: 'Error'),
      ),
      body: AsyncValueWidget(
        value: enigmaAsync,
        data: (enigma) => SafeArea(
          child: Padding(
            padding: AppSizes.screenPadding,
            child: Column(
              children: [
                // Enigma description
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(AppSizes.paddingM),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surfaceContainerHighest,
                    borderRadius: BorderRadius.circular(AppSizes.radiusM),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Question:',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                      const SizedBox(height: AppSizes.paddingS),
                      Text(
                        enigma.description,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: AppSizes.paddingM),

                // Case files for selecting answer
                Expanded(
                  child: CaseFiles(
                    episodeId: episodeId,
                    onElementTap: (type, id) {
                      // Navigate to enigma solving screen
                      context.push(
                        '/episode/$episodeId/enigma/$elementId/solve'
                        '?selectedElementId=$id&selectedElementType=${type.value}',
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
      ),
    );
  }
}