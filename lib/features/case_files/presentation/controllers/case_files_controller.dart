import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../episode/domain/enums/element_type.dart';

part 'case_files_controller.g.dart';

@riverpod
class CaseFilesTabController extends _$CaseFilesTabController {
  @override
  ElementType build() {
    return ElementType.character;
  }

  void selectTab(ElementType type) {
    state = type;
  }
}