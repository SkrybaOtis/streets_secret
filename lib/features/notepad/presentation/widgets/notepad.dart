import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';
import '../../../game_state/presentation/controllers/game_state_controller.dart';
import '../controllers/notepad_controller.dart';

class Notepad extends ConsumerStatefulWidget {
  const Notepad({
    super.key,
    required this.episodeId,
  });

  final String episodeId;

  @override
  ConsumerState<Notepad> createState() => _NotepadState();
}

class _NotepadState extends ConsumerState<Notepad> {
  late TextEditingController _textController;
  bool _isEditing = false;

  @override
  void initState() {
    super.initState();
    _textController = TextEditingController();
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final notes = ref.watch(userNotesProvider(widget.episodeId));
    
    // Update controller text when notes change externally
    if (!_isEditing && _textController.text != notes) {
      _textController.text = notes;
    }

    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFFFFFACD), // Light yellow notepad color
        borderRadius: BorderRadius.circular(AppSizes.radiusM),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withValues(alpha: 0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
        border: Border.all(
          color: Colors.amber[200]!,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          // Header
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppSizes.paddingM,
              vertical: AppSizes.paddingS,
            ),
            decoration: BoxDecoration(
              color: Colors.amber[100],
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(AppSizes.radiusM),
              ),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.edit_note,
                  color: AppColors.primary,
                ),
                const SizedBox(width: AppSizes.paddingS),
                Text(
                  'My Notes',
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Spacer(),
                if (_isEditing)
                  TextButton(
                    onPressed: _saveNotes,
                    child: const Text('Save'),
                  ),
              ],
            ),
          ),
          // Content
          Expanded(
            child: GestureDetector(
              onTap: _startEditing,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(AppSizes.paddingM),
                child: _isEditing
                    ? TextField(
                        controller: _textController,
                        maxLines: null,
                        expands: true,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Tap to write your notes...',
                          fillColor: Colors.transparent,
                          filled: true,
                        ),
                        style: Theme.of(context).textTheme.bodyMedium,
                        autofocus: true,
                        onChanged: (_) {
                          // Mark as editing
                        },
                      )
                    : SingleChildScrollView(
                        child: Text(
                          notes.isEmpty
                              ? 'Tap to write your notes...'
                              : notes,
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                                color: notes.isEmpty
                                    ? Colors.grey
                                    : Colors.black87,
                                fontStyle: notes.isEmpty
                                    ? FontStyle.italic
                                    : FontStyle.normal,
                              ),
                        ),
                      ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _startEditing() {
    setState(() {
      _isEditing = true;
    });
  }

  void _saveNotes() {
    ref
        .read(gameStateControllerProvider(widget.episodeId).notifier)
        .updateNotes(_textController.text);
    setState(() {
      _isEditing = false;
    });
  }
}