import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../character/presentation/controllers/character_controller.dart';
import '../../../clue/presentation/controllers/clue_controller.dart';
import '../../../enigma/presentation/controllers/enigma_controller.dart';
import '../../../episode/domain/enums/element_type.dart';
import '../controllers/case_files_controller.dart';
import 'element_section.dart';

class CaseFiles extends ConsumerWidget {
  const CaseFiles({
    super.key,
    required this.episodeId,
    required this.onElementTap,
    this.selectedElementId,
    this.selectedElementType,
  });

  final String episodeId;
  final void Function(ElementType type, int id) onElementTap;
  final int? selectedElementId;
  final ElementType? selectedElementType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentTab = ref.watch(caseFilesTabControllerProvider);

    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(AppSizes.radiusL),
        boxShadow: [
          BoxShadow(
            color: Colors.white.withValues(alpha: 0.1),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        children: [
          // Tab dividers
          Row(
            children: [
              _TabDivider(
                icon: Icons.person,
                color: AppColors.characterTab,
                isSelected: currentTab == ElementType.character,
                onTap: () => ref
                    .read(caseFilesTabControllerProvider.notifier)
                    .selectTab(ElementType.character),
              ),
              _TabDivider(
                icon: Icons.search,
                color: AppColors.clueTab,
                isSelected: currentTab == ElementType.clue,
                onTap: () => ref
                    .read(caseFilesTabControllerProvider.notifier)
                    .selectTab(ElementType.clue),
              ),
              _TabDivider(
                icon: Icons.help_outline,
                color: AppColors.enigmaTab,
                isSelected: currentTab == ElementType.enigma,
                onTap: () => ref
                    .read(caseFilesTabControllerProvider.notifier)
                    .selectTab(ElementType.enigma),
              ),
            ],
          ),
          // Content
          Expanded(
            child: _buildContent(ref, currentTab),
          ),
        ],
      ),
    );
  }

  Widget _buildContent(WidgetRef ref, ElementType currentTab) {
    switch (currentTab) {
      case ElementType.character:
        return _CharacterSection(
          episodeId: episodeId,
          onElementTap: (id) => onElementTap(ElementType.character, id),
          selectedElementId: selectedElementType == ElementType.character
              ? selectedElementId
              : null,
        );
      case ElementType.clue:
        return _ClueSection(
          episodeId: episodeId,
          onElementTap: (id) => onElementTap(ElementType.clue, id),
          selectedElementId: selectedElementType == ElementType.clue
              ? selectedElementId
              : null,
        );
      case ElementType.enigma:
        return _EnigmaSection(
          episodeId: episodeId,
          onElementTap: (id) => onElementTap(ElementType.enigma, id),
          selectedElementId: selectedElementType == ElementType.enigma
              ? selectedElementId
              : null,
        );
      case ElementType.location:
        return const SizedBox.shrink();
    }
  }
}

class _TabDivider extends StatelessWidget {
  const _TabDivider({
    required this.icon,
    required this.color,
    required this.isSelected,
    required this.onTap,
  });

  final IconData icon;
  final Color color;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: AppSizes.paddingM),
          decoration: BoxDecoration(
            color: isSelected ? color : color.withValues(alpha: 0.3),
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(AppSizes.radiusL),
            ),
          ),
          child: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.white70,
            size: AppSizes.iconL,
          ),
        ),
      ),
    );
  }
}

class _CharacterSection extends ConsumerWidget {
  const _CharacterSection({
    required this.episodeId,
    required this.onElementTap,
    this.selectedElementId,
  });

  final String episodeId;
  final void Function(int id) onElementTap;
  final int? selectedElementId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final charactersAsync = ref.watch(
      unlockedCharactersListProvider(episodeId),
    );

    return charactersAsync.when(
      data: (characters) => ElementSection(
        icon: Icons.person,
        elements: characters
            .map((c) => ElementItem(
                  id: c.id,
                  name: c.name,
                  imageUrl: c.imageUrl,
                ))
            .toList(),
        onElementTap: onElementTap,
        episodeId: episodeId,
        selectedElementId: selectedElementId,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => const Center(child: Text('Error loading characters')),
    );
  }
}

class _ClueSection extends ConsumerWidget {
  const _ClueSection({
    required this.episodeId,
    required this.onElementTap,
    this.selectedElementId,
  });

  final String episodeId;
  final void Function(int id) onElementTap;
  final int? selectedElementId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cluesAsync = ref.watch(unlockedCluesListProvider(episodeId));

    return cluesAsync.when(
      data: (clues) => ElementSection(
        icon: Icons.search,
        elements: clues
            .map((c) => ElementItem(
                  id: c.id,
                  name: c.name,
                  imageUrl: c.imageUrl,
                ))
            .toList(),
        onElementTap: onElementTap,
        episodeId: episodeId,
        selectedElementId: selectedElementId,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => const Center(child: Text('Error loading clues')),
    );
  }
}

class _EnigmaSection extends ConsumerWidget {
  const _EnigmaSection({
    required this.episodeId,
    required this.onElementTap,
    this.selectedElementId,
  });

  final String episodeId;
  final void Function(int id) onElementTap;
  final int? selectedElementId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final enigmasAsync = ref.watch(unlockedEnigmasListProvider(episodeId));

    return enigmasAsync.when(
      data: (enigmas) => ElementSection(
        icon: Icons.help_outline,
        elements: enigmas
            .map((e) => ElementItem(
                  id: e.id,
                  name: e.name,
                  imageUrl: e.imageUrl,
                ))
            .toList(),
        onElementTap: onElementTap,
        episodeId: episodeId,
        selectedElementId: selectedElementId,
      ),
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (_, __) => const Center(child: Text('Error loading enigmas')),
    );
  }
}