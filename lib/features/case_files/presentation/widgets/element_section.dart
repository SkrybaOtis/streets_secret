import 'package:flutter/material.dart';

import '../../../../core/constants/app_sizes.dart';
import '../../../../core/theme/app_colors.dart';
import 'element_card.dart';

class ElementSection extends StatelessWidget {
  const ElementSection({
    super.key,
    required this.icon,
    required this.elements,
    required this.onElementTap,
    this.selectedElementId,
  });

  final IconData icon;
  final List<ElementItem> elements;
  final void Function(int id) onElementTap;
  final int? selectedElementId;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(AppSizes.radiusL),
        border: Border.all(color: Colors.grey[300]!),
      ),
      child: Column(
        children: [
          // Tab divider with icon
          Container(
            padding: const EdgeInsets.symmetric(
              vertical: AppSizes.paddingS,
            ),
            child: Icon(
              icon,
              size: AppSizes.iconL,
              color: AppColors.primary,
            ),
          ),
          const Divider(height: 1),
          // Horizontal list of elements
          Expanded(
            child: elements.isEmpty
                ? const Center(
                    child: Text('No elements unlocked yet'),
                  )
                : Scrollbar(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.all(AppSizes.paddingM),
                      itemCount: elements.length,
                      separatorBuilder: (_, __) =>
                          const SizedBox(width: AppSizes.paddingM),
                      itemBuilder: (context, index) {
                        final element = elements[index];
                        return ElementCard(
                          name: element.name,
                          imageUrl: element.imageUrl,
                          isSelected: element.id == selectedElementId,
                          onTap: () => onElementTap(element.id),
                        );
                      },
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}

class ElementItem {
  final int id;
  final String name;
  final String imageUrl;

  const ElementItem({
    required this.id,
    required this.name,
    required this.imageUrl,
  });
}