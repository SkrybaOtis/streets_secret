import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../case_files/presentation/widgets/element_card.dart';
import '../../../character/presentation/controllers/character_controller.dart';
import '../../../clue/presentation/controllers/clue_controller.dart';
import '../../../episode/domain/enums/element_type.dart';
import '../../../game_state/presentation/controllers/game_state_controller.dart';
import '../controllers/enigma_controller.dart';

class EnigmaSolvingScreen extends ConsumerWidget {
  const EnigmaSolvingScreen({
    super.key,
    required this.episodeId,
    required this.enigmaId,
    this.selectedElementId,
    this.selectedElementType,
  });

  final String episodeId;
  final int enigmaId;
  final int? selectedElementId;
  final ElementType? selectedElementType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enigmaAsync = ref.watch(enigmaProvider(episodeId, enigmaId));
    final remainingAttempts =
        ref.watch(enigmaRemainingAttemptsProvider(episodeId, enigmaId));
    final isSolved = ref.watch(isEnigmaSolvedProvider(episodeId, enigmaId));

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
                Expanded(
                  flex: 2,
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(AppSizes.paddingM),
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                      borderRadius: BorderRadius.circular(AppSizes.radiusM),
                    ),
                    child: SingleChildScrollView(
                      child: Text(
                        enigma.description,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: AppSizes.paddingL),

                // Answer section
                Expanded(
                  flex: 3,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Selected element
                      Expanded(
                        child: _buildSelectedElement(context, ref),
                      ),
                      const SizedBox(width: AppSizes.paddingM),
                      // Status and answer button
                      Expanded(
                        child: Column(
                          children: [
                            // Attempts remaining
                            Container(
                              padding:
                                  const EdgeInsets.all(AppSizes.paddingM),
                              decoration: BoxDecoration(
                                color: isSolved
                                    ? AppColors.success.withValues(alpha: 0.1)
                                    : remainingAttempts > 0
                                        ? AppColors.warning.withValues(alpha: 0.1)
                                        : AppColors.error.withValues(alpha: 0.1),
                                borderRadius:
                                    BorderRadius.circular(AppSizes.radiusM),
                                border: Border.all(
                                  color: isSolved
                                      ? AppColors.success
                                      : remainingAttempts > 0
                                          ? AppColors.warning
                                          : AppColors.error,
                                ),
                              ),
                              child: Column(
                                children: [
                                  if (isSolved) ...[
                                    const Icon(
                                      Icons.check_circle,
                                      color: AppColors.success,
                                      size: 48,
                                    ),
                                    const SizedBox(height: AppSizes.paddingS),
                                    Text(
                                      'Solved!',
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleLarge
                                          ?.copyWith(
                                            color: AppColors.success,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ] else ...[
                                    Text(
                                      'Attempts Remaining',
                                      style:
                                          Theme.of(context).textTheme.bodyMedium,
                                    ),
                                    const SizedBox(height: AppSizes.paddingS),
                                    Text(
                                      '$remainingAttempts',
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineLarge
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: remainingAttempts > 0
                                                ? AppColors.warning
                                                : AppColors.error,
                                          ),
                                    ),
                                  ],
                                ],
                              ),
                            ),
                            const Spacer(),
                            // Answer button
                            if (!isSolved && remainingAttempts > 0)
                              AppButton(
                                text: 'Answer',
                                onPressed: selectedElementId != null
                                    ? () => _submitAnswer(context, ref, enigma)
                                    : null,
                                isFullWidth: true,
                              ),
                          ],
                        ),
                      ),
                    ],
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

  Widget _buildSelectedElement(BuildContext context, WidgetRef ref) {
    if (selectedElementId == null || selectedElementType == null) {
      return Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(AppSizes.radiusM),
          border: Border.all(
            color: Colors.grey[400]!,
            style: BorderStyle.solid,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.touch_app,
                size: 48,
                color: Colors.grey[500],
              ),
              const SizedBox(height: AppSizes.paddingS),
              Text(
                'Select an element\nto answer',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600]),
              ),
            ],
          ),
        ),
      );
    }

    // Get element details
    String name = '';
    String imageUrl = '';

    if (selectedElementType == ElementType.character) {
      final characterAsync =
          ref.watch(characterProvider(episodeId, selectedElementId!));
      return AsyncValueWidget(
        value: characterAsync,
        data: (character) => ElementCard(
          name: character.name,
          imageUrl: character.imageUrl,
          isSelected: true,
        ),
      );
    } else if (selectedElementType == ElementType.clue) {
      final clueAsync = ref.watch(clueProvider(episodeId, selectedElementId!));
      return AsyncValueWidget(
        value: clueAsync,
        data: (clue) => ElementCard(
          name: clue.name,
          imageUrl: clue.imageUrl,
          isSelected: true,
        ),
      );
    }

    return const SizedBox.shrink();
  }

  Future<void> _submitAnswer(
    BuildContext context,
    WidgetRef ref,
    dynamic enigma,
  ) async {
    if (selectedElementId == null) return;

    final isCorrect = await ref
        .read(gameStateControllerProvider(episodeId).notifier)
        .checkEnigmaAnswer(
          enigmaId: enigmaId,
          selectedCharacterId: selectedElementId!,
          validAnswerCharacterIds: enigma.validAnswerCharacterIds,
          maxAttempts: enigma.maxAttempts,
        );

    if (!context.mounted) return;

    if (isCorrect) {
      // Show success dialog
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) => AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.check_circle, color: AppColors.success, size: 32),
              SizedBox(width: AppSizes.paddingM),
              Text('Correct!'),
            ],
          ),
          content: const Text(
            'Congratulations! You solved this enigma correctly.',
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                context.pop();
              },
              child: const Text('Continue'),
            ),
          ],
        ),
      );
    } else {
      // Show incorrect dialog
      final remainingAttempts =
          ref.read(enigmaRemainingAttemptsProvider(episodeId, enigmaId));

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Row(
            children: [
              Icon(Icons.close, color: AppColors.error, size: 32),
              SizedBox(width: AppSizes.paddingM),
              Text('Incorrect'),
            ],
          ),
          content: Text(
            remainingAttempts > 0
                ? 'That\'s not the right answer. You have $remainingAttempts attempts remaining.'
                : 'That\'s not the right answer. You have no more attempts.',
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Try Again'),
            ),
          ],
        ),
      );
    }
  }
}