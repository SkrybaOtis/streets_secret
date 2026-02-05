import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/widgets/async_value_widget.dart';
import '../../../../shared/widgets/app_button.dart';
import '../../../../shared/widgets/branch_header.dart';
import '../../../case_files/presentation/widgets/case_files.dart';
// import '../../../episode/domain/enums/element_type.dart';
import '../controllers/character_controller.dart';
import '../widgets/character_dialog.dart';

class CharacterScreen extends ConsumerWidget {
  const CharacterScreen({
    super.key,
    required this.episodeId,
    required this.characterId,
  });

  final String episodeId;
  final int characterId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final characterAsync =
        ref.watch(characterProvider(episodeId, characterId));
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      // appBar: AsyncValueWidget(
      //   value: characterAsync,
      //   data: (character) => BranchHeader(title: character.name),
      //   loading: () => const BranchHeader(title: 'Loading...'),
      //   error: (_, __) => const BranchHeader(title: 'Error'),
      // ),
      appBar: characterAsync.when(
        data: (character) => BranchHeader(title: character.name),
        loading: () => const BranchHeader(title: 'Loading...'),
        error: (_, __) => const BranchHeader(title: 'Error'),
      ),
      body: AsyncValueWidget(
        value: characterAsync,
        data: (character) => SafeArea(
          child: Padding(
            padding: AppSizes.screenPadding,
            child: Column(
              children: [
                // Character dialog
                SizedBox(
                  height: screenHeight * 0.35,
                  child: CharacterDialog(
                    episodeId: episodeId,
                    character: character,
                  ),
                ),
                const SizedBox(height: AppSizes.paddingM),

                // Case files
                Expanded(
                  child: CaseFiles(
                    episodeId: episodeId,
                    onElementTap: (type, id) {
                      // Update dialog based on element tapped
                      ref
                          .read(characterDialogControllerProvider(
                                  episodeId, characterId)
                              .notifier)
                          .showDialogForElement(
                            elementType: type,
                            elementId: id,
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